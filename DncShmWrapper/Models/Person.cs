using System.Runtime.InteropServices;

namespace DncShmWrapper.Models
{
    public struct Person
    {
        public int Id;
        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 50)]
        public string Name;
        public int Age;
        public bool IsAlive;
    }
}
