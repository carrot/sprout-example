# Sprout Example

## Using EJS
You can use [EJS](http://ejs.co) to power your templates. This means you can run any Javascript within your EJS in your templates, including variable assignment, String functions and iteration (to name a few).

**Example:**

My Name is <%= name %> and my favorite food is <%= food.toUpperCase() %>.

My favorite emoji is <%= emoji %>

---

## Using underscore.string
We pass the `S()` function to every template that lets you do powerful string manipulation using all of the functions available to you in [underscore.string](https://epeli.github.io/underscore.string/).

**Example:**

If my name were a class it'd be <%= S.classify(name) %>. If we wanted to slugify my name, it'd be <%= S.slugify(name) %>.

---
