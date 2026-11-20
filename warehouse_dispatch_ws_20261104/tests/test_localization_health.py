import unittest
from warehouse_sim.localization_health import covariance_quality

class LocalizationTests(unittest.TestCase):
    def cov(self,x=.01,y=.01,yaw=.01):
        values=[0.]*36;values[0]=x;values[7]=y;values[35]=yaw;return values
    def test_good_localization_is_usable(self):self.assertTrue(covariance_quality(self.cov())['ok'])
    def test_observed_large_covariance_is_rejected_even_with_fresh_tf(self):self.assertFalse(covariance_quality(self.cov(24.1683,6.0988,.3599))['ok'])
    def test_invalid_or_missing_covariance_is_rejected(self):
        for v in [[],self.cov(float('nan')),self.cov(-1),self.cov(yaw=float('inf'))]:
            with self.subTest(v=v):self.assertFalse(covariance_quality(v)['ok'])
    def test_ros_numpy_covariance_produces_json_serializable_primitives(self):
        import numpy,json
        q=covariance_quality(numpy.array(self.cov(),dtype=numpy.float64))
        self.assertIs(type(q['ok']),bool);self.assertIn('true',json.dumps(q))
    def test_observed_startup_roundoff_is_not_a_localization_fault(self):
        values=self.cov(-2.984279490192421e-13,-2.2737367544323206e-13,3.153033389935469e-14)
        values[1]=values[6]=-1.4566126083082054e-13
        q=covariance_quality(values);self.assertTrue(q['ok']);self.assertEqual(q['x_variance'],0.)
