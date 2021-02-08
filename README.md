# ParisVelib

##Preview 

![Preview](https://nsa40.casimages.com/img/2021/02/08/21020801343490058.png)

## Description
Dashing/Smashing widget displaying number of Velib available in a specific Velib station

## Dependencies
The following dependencies are required. Please add them to your dashing gemfile.
```
gem 'json'
```
Run `bundle install`

## Usage

To install this widget into you dashboard, add files velib.html, velib.scss and velib.coffee in widgets/velib/ and velib.rb in jobs/

Insert the HTML code in your `erb` file like this :
```
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
  <div data-id="velib" data-view="Velib"></div>
</li>
```

FontAwesome is required for the good display of the widget.

## License

This widget is released under the [MIT License](http://www.opensource.org/licenses/MIT).

## NB

Feel free to leave comments for any improvements.
