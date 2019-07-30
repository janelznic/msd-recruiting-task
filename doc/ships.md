# Shipyard (ships)

## Schema

| Key | Value  |
| ----------- | ----------- |
| id | number |
| name | string |
| speed | string |


## API

### Interface

Available at URL: ```/ships```

### Methods

* POST **/ships** - _Add ship to shipyard_
  * Parameters:
    ```javascript
    {
      name: <string> (required),
      speed: <string> (required)
    }
    ```
  * Returns:
    ```javascript
    {
      id: <number>
    }
    ```


* GET **/ships** - _Fetches list of Ships_
  * (No parameters)
  * Returns:
    ```javascript
    [{
      id: <number>,
      name: <string>,
      speed: <string>
    }]
    ```
