from matplotlib.style import available
from orm.ProductStock import ProductStock
from orm.Product import Product

# p5 = Product(5, "Fifth", 500, "USD", "5234567890123", 50)
# p5.create()
# p4.name = "Fourth product"
# p4.save()

# products = Product.all()
# print(products)

# p5 = Product.get(5)
# p5.name = "Modified Fifth"
# p5.save()
# print(p5)

# products = Product.all()
# print(products)

available = ProductStock.isProductAvailable(6)
print(available)