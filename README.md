<p align="center">
<img src="https://i.imgur.com/xO10ghf.png" alt="drawing" width="400"/>
</p>

This is a Ruby on Rails API that searches for nearby ramen restaurants given a Brooklyn zipcode.

# Instructions

Open the project in your terminal.

Enter the following commands:

`rails db:migrate`

`rails db:seed`

`rails bundle`

`rails s`

Once the server is running, you can request data useing this link in your browser or request file.

`localhost:3000/zips/search/(#zipcode)`

Responses are outputed in JSON format and are sorted by distance from the given zipcode.
