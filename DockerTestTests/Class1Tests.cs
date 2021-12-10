using Microsoft.VisualStudio.TestTools.UnitTesting;
using DockerTest;

namespace DockerTest.Tests
{
    [TestClass()]
    public class Class1Tests
    {
        [TestMethod()]
        public void GiveMeFiveTest()
        {
            var expected = 5;
            var actual = new Class1().GiveMeFive();
            Assert.AreEqual(expected, actual);
        }
    }
}