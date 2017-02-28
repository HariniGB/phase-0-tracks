# Forms

### Input types

* `<input type="text">` defines a one-line text input. The default width of a text field is 20 characters.
* `<input type="password">` defines a password. The characters in a password field are shown as *asterisks or dots/circles*.
* `<input type="submit">` defines a button for submitting form data to the **page** mentioned in `<form action="page">`.
* `<input type="reset">` defines a reset button that will reset all form values to their default values.
* `<input type="radio">` defines a radio button. Radio buttons let a user to select *only one* among the number of choices. 
* `<input type="checkbox">` defines a checkbox. Checkboxes let a user to select *zero or more* options among the number of choices.
* `<input type="button">` defines a button. By default **Submit**, **Reset** are in button form. We can use **"onclick"** element to mention the action to be performed when the button is clicked. **"value"** element is used to dispaly the name of the button on the screen. 
* `<input type="color">` is used for input fields that should contain a color. Initially a **color picker(box)** is diplayed with a default color. To change the color, we need to select the box which will dispaly the **color pattern**. 
* `<input type="date"> is used for input fields that contain a date with no time zone as default. A **date picker** can show up in the input field. You can also add restrictions to dates. Like giving **max**, **min** values for the date. If we type wrong value, the system will show a alert message. 
* `<input type="datetime-local">` specifies a date and time input field, with no time zone as default. By default the date pattern is *mm/dd/yyyy*. Depending on browser support, a date picker can show up in the input field.
* `<input type="email">` is used for input fields that should contain an e-mail address. By default it checks **@** and **.com** occurance in the input. 
* `<input type="month">` allows the user to select a month and year. When the user selects the first letter of the month's name, the data is filled automatically. This takes month name as input instead of month as a number (1-12).
* `<input type="number">` defines a numeric input field with numeric restrictions using **min**, **max** values with input element. 

### Form tags:

- `<input>`: It specifies an input field where the user can enter data. An input field can vary in many ways, depending on the type attribute *(see above)*.
- `<textarea>`: It defines a multi-line text input data. A text area can hold an unlimited number of characters, and the text renders in a fixed-width. The size of a text area can be specified by the **cols** and **rows** attributes.
- `<button>`: It defines a clickable button. It can accept images and text as their elements.
- `<select>`: It is used to create a drop-down list in the input data. `<option>` tag is used inside this element to define the available options in the drop-down list.
- `<option>`: It defines an option in a select list. It always goes inside `<select>` or `<datalist>` element.
- `<optgroup>`: It is used to group related options in a drop-down list. If you have a long list of options, groups of related options are easier to handle.
- `<fieldset>`: It is used to group related elements in a form. Like a sub form or a small form section. It use `<legend>` element to name the field set section.
- `<label>`: It defines label for the `<input>` element. It provides usability improvement when the user clicks the input data box. 
