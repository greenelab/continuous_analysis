import unittest
import simple_script as ss


class SimpleTest(unittest.TestCase):

	def testAdd(self):
		self.assertTrue(ss.add(1, 1) == 2)
		self.assertTrue(ss.add(2, 2) == 4)

	def testSubtract(self):
		self.assertTrue(ss.sub(2, 1) == 1)

	def testMultiply(self):
		self.assertTrue(ss.multiply(2, 3) == 6)

	# Commented out to test coverage
	# def testDivide(self):
	# 	self.assertTrue(ss.divide(4, 2) == 2)

if __name__ == '__main__':
	unittest.main()