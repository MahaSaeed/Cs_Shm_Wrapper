using DncShmWrapper.Models;
using System;
using System.Runtime.InteropServices;

namespace DncShmWrapper
{
    public class SharedMemoryWrapper
    {
        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Initialize(string svc_name);

        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr GetServiceName();

        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern void Birthday(int person_id);

        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr GetAllIds(out int length);

        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern bool Search(Person person);

        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern IntPtr GetAll(out int length);

        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern int Add(Person p);
        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern int ReleaseStringArray(IntPtr names);

        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern int releaseIntArrayMemory(IntPtr ids);

        [DllImport("dnc_wrapper.so", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.Cdecl)]
        public static extern int ReleasePersonArray(IntPtr names);

    }
}
