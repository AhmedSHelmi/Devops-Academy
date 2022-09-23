# pylint: disable=missing-module-docstring

from flask import Flask, request

from flask_restful import Resource, Api

app = Flask(__name__)

api = Api(app)

items = [{"name": "chair", "price": "12.00"}]


class Item(Resource):

    """Class that represents one Item."""

    def get(self, name):
        """method to retrieve Item by name."""

        for item in items:

            if item["name"] == name:

                return item

        return {"item": None}, 404

    def post(self, name):
        """method to add Item by name."""

        data = request.get_json(force=True)

        item = {"name": name, "price": data["price"]}

        items.append(item)

        return item, 201


class ItemList(Resource):

    """Class that represents all Items list."""

    def get(self):
        """method to retrieve all the Items in list."""

        return {"item": items}


api.add_resource(Item, "/item/<string:name>")

api.add_resource(ItemList, "/items")

app.run(port=5000, host="0.0.0.0", debug=True)
