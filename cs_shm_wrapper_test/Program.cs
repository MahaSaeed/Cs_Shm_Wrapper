using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using DncShmWrapper;
using DncShmWrapper.Models;

namespace cs_shm_wrapper_test
{
    class Program
    {
        static int[] MarshalArray(int length, IntPtr ptr)
        {
            int[] array = new int[length];
            Marshal.Copy(ptr, array, 0, length);
            int success = SharedMemoryWrapper.releaseIntArrayMemory(ptr);
            if (success == 0)
            {
                Console.WriteLine("Memory released at C++ side." + Environment.NewLine);
            }

            return array;
        }
        static void Main(string[] args)
        {
            int result = -11, length = 0;
            Int64 stats;
            string statsAsString;
            List<Person> persons = new List<Person>();
            Console.WriteLine("Started");

            Console.ReadKey();
            try
            {
                #region Initialization

                result = SharedMemoryWrapper.Initialize("Csharp Service");
                Console.WriteLine(result);


                #endregion

                #region Get Service Name

                statsAsString = Marshal.PtrToStringAnsi(SharedMemoryWrapper.GetServiceName());
                Console.WriteLine("Service name is: " + statsAsString);

                SharedMemoryWrapper.Birthday(1);

                #endregion

                #region Add Person
                Person person1 = new Person() { Id = 2, Age = 21, IsAlive =true, Name = "ABC" };
                Person person2 = new Person() { Id = 3, Age = 76, IsAlive = true, Name = "XYZ" };
                Person person3 = new Person() { Id = 4, Age = 23, IsAlive = true, Name = "OPI" };
                Person person4 = new Person() { Id = 5, Age = 65, IsAlive = true, Name = "MNY" };

                int id = SharedMemoryWrapper.Add(person1);
                Console.WriteLine(id);
                id = SharedMemoryWrapper.Add(person2);
                Console.WriteLine(id);
                id = SharedMemoryWrapper.Add(person3);
                Console.WriteLine(id);
                id = SharedMemoryWrapper.Add(person4);
                Console.WriteLine(id);

                #endregion

                #region Get Person and related items

                bool found = SharedMemoryWrapper.Search(person1);
                Console.WriteLine("Person Found::" + found);

                //Getting back an array for person ids
                IntPtr personsPtr = SharedMemoryWrapper.GetAllIds(out length);
                int[] personArray = MarshalArray(length, personsPtr);
                foreach (int per in personArray)
                {
                    Console.WriteLine("Person ID:" + per);
                }

                Person structure;

                personsPtr = SharedMemoryWrapper.GetAll(out length);
                IntPtr personsPtrDeletion = personsPtr;
                for (int i=0;i<length;i++)
                {
                    structure = (Person)Marshal.PtrToStructure(personsPtr, typeof(Person));
                    int size = Marshal.SizeOf(structure);
                    personsPtr += size;
                    Console.WriteLine(structure.Name);
                    Console.WriteLine(structure.Id);
                    Console.WriteLine(structure.Age);
                    Console.WriteLine(structure.IsAlive);
                }

                int success = SharedMemoryWrapper.ReleasePersonArray(personsPtrDeletion);
                if (success == 0)
                {
                    Console.WriteLine("Memory released at C++ side.");
                }

                #endregion

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
