# StudiVZ Case: Sentiment Classifier Deployed as a REST API using Flask

* [Flask Restful Documentation]()
* [HTTPie Documentation](https://httpie.org/doc)
* [Data Source: Kaggle](https://www.kaggle.com/c/sentiment-analysis-on-movie-reviews/data)
___

## Procedure
1. run docker-compose file to prepare the app with:
  * Run in persistance mode
  * Mount volume
  * enabling Docker Swarm for application scaling

## File Structure
* app_name
  * app.py: Flask API application
  * model.py: class object for classifier
  * build_model.py: imports the class object from `model.py` and initiates a new model, trains the model, and pickle
  * util.py: helper functions for `model.py`
  * requirements.txt: list of packages that the app will import
  * lib
      * data: directory that contains the data files from Kaggle
      * models: directory that contains the pickled model files


## Testing the API
1. Run the Flask API locally for testing. Go to directory with `app.py`.

```bash
python app.py
```


2. In a new terminal window, use HTTPie to make a GET request at the URL of the API.

```bash
http http://127.0.0.1:5000/ query=="That was pretty entertaining"
```


3. Example of successful output.

```bash
HTTP/1.0 200 OK
Content-Length: 57
Content-Type: application/json
Date: Tue, 21 Aug 2018 19:04:04 GMT
Server: Werkzeug/0.14.1 Python/3.6.3

{
    "confidence": 0.78,
    "prediction": "Positive"
}
```
