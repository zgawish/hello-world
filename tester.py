import unittest
from poke import handle_request, get_request


class TestFileName(unittest.TestCase):
    def test_function1(self):
        self.assertEqual(handle_request("cauvbdi"), {})
        self.assertEqual(len(handle_request("cauvbdi")), 0)
        self.assertEqual(len(handle_request("bulbasaur")), 6)

    def test_function2(self):
        self.assertEqual(get_request("pickachu").status_code, 404)
        self.assertEqual(get_request("ditto").status_code, 200)

if __name__ == '__main__':
    unittest.main()