﻿namespace _06.PhoneBook
{
    /*
     * A text file phones.txt holds information about people, their town and phone number:
	Duplicates can occur in people names, towns and phone numbers. 
    Write a program to read the phones file and execute a sequence
    of commands given in the file commands.txt:
     * 
        Mimi Shmatkata          | Plovdiv  | 0888 12 34 56
        Kireto                  | Varna    | 052 23 45 67
        Daniela Ivanova Petrova | Karnobat | 0899 999 888
        Bat Gancho              | Sofia    | 02 946 946 946

     * 
    find(name) – display all matching records by given name (first, middle, last or nickname)
    find(name, town) – display all matching records by given name and town    
     */

    using _06.PhoneBook;

    class Program
    { 
        static void Main(string[] args)
        {
            var phonebook = new Phonebook();
            phonebook.Find("Mimi Shmatkata");
            phonebook.Find("Kireto", "Varna");
        }
    }
}
