from django.db import models
from django.contrib.auth.models import User



class Product(models.Model):
    item_name = models.CharField('name', max_length=100)
    item_img = models.CharField('name', max_length=100, default="abc")
    item_price = models.FloatField()
    item_type = models.CharField('type', max_length=100)

    class Meta:
        db_table = "Product"


class OrderItem(models.Model):
	product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True)
	Customer = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
	quantity = models.IntegerField(default=0, null=True, blank=True)
	pay = models.IntegerField(default=0, null=True, blank=True)

	@property
	def get_total(self):
		total = self.product.item_price * self.quantity
		return total