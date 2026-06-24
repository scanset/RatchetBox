using System;
using System.Collections.Generic;

namespace App
{
    internal static class Program
    {
        private static int Main(string[] args)
        {
            List<Animal> animals = new List<Animal>();
            animals.Add(new Dog("Buddy"));
            animals.Add(new Cat("Whiskers"));
            animals.Add(new Cow("Betsy"));

            foreach (Animal animal in animals)
            {
                Console.WriteLine("Name: " + animal.Name + ", Sound: " + animal.Speak());
            }

            return 0;
        }
    }

    public abstract class Animal
    {
        public string Name;

        public Animal(string name)
        {
            Name = name;
        }

        public abstract string Speak();
    }

    public class Dog : Animal
    {
        public Dog(string name) : base(name)
        {
        }

        public override string Speak()
        {
            return "Woof!";
        }
    }

    public class Cat : Animal
    {
        public Cat(string name) : base(name)
        {
        }

        public override string Speak()
        {
            return "Meow!";
        }
    }

    public class Cow : Animal
    {
        public Cow(string name) : base(name)
        {
        }

        public override string Speak()
        {
            return "Moo!";
        }
    }
}