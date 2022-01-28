![](https://img.shields.io/badge/Microverse-blueviolet)
![](https://img.shields.io/badge/Ruby-red)

# School Library

> In this project I'm working with Ruby using OOP.

## Milestone 1:

✅ Created a new class called Person with the following methods: <br>

  - <code>initialize</code> as constructor <br>
  - <code>can_use_services?</code> <br>
  - <code>is_of_age?</code> as private method <br>
✅ Added setters and getters for name, age and id <br>
✅ Created a Student class that inherits from Person <br>
✅ Created a Teacher class that inherits from Person <br>

Override <code>can_use_services?</code> method thanks to polymorphism

## Milestone 2:

✅ Created a new class called <code>Corrector</code> <br>
✅ Added a method to limit the number of characters to 10 and capitalize the first character 🅰️ <br>
✅ Set a instance of <code>Corrector</code> in <code>Person</code> class on initialization 🤝 <br>
✅ Added a method called <code>validate_name</code> to update <code>@name</code> using <code>Corrector</code> instance 🆙 <br>

## Milestone 3:

✅  Created a class <code>Classroom</code> 🧑‍🏫  <br>
✅  Created the <code>has-many/belongs-to</code> relationship between <code>Classroom</code> and <code>Student</code> ◀️ ▶️ <br>
✅  Created a class <code>Book</code> 📚  <br>
✅  Create a class <code>Rental</code> 🧾 <br>
✅  Create the <code>many-to-many</code> relationship between <code>Person</code> and <code>Book</code> using the intermediate class <code>Rental</code> ⏫  ⏬ <br>

## Milestone 4:

✅  Created <code>main.rb</code> as entry point to the <code>app.rb</code> 🧑‍💻 <br>
✅  Added methods to do the following: ⬇️  ⬇️ <br>
>    ☑️ List all books 📚 <br>
>    ☑️ List all people 👩  👨 🧑‍🏫  👦 <br>
>    ☑️ Create a new student or teacher 👨‍🏫  🧒 <br>
>    ☑️ Create a book. 📖 <br>
>    ☑️ Create a rental. 🧾 <br>
>    ☑️ List all rentals for a given person id. 📄 <br>

✅  Added user interaction, he/she is able to do the following: ⬇️  ⬇️ <br>

> ☑️ Present the user with a list of options to perform.<br>
> ☑️ Lets users choose an option.<br>
> ☑️ If needed, ask for parameters for the option.<br>
> ☑️ Have a way to quit the app.<br>

## Built With

- Ruby

To get a local copy up and running follow these simple example steps.

Open your termnial and run the following command:

<code>git clone https://github.com/AlexRS90/OOP-school-library.git</code>

### Prerequisites

- Ruby
- Terminal

## Author

👤 **Alejandro Ramos**

- GitHub: [@AlexRS90](https://github.com/AlexRS90)
- Twitter: [@AlejandroRBenji](https://twitter.com/AlejandroRBenji)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./MIT.md) licensed.