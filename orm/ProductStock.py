from .Product import Product

class ProductStock:
    
    def isProductAvailable(productId):
        product = Product.get(productId)
        if product == None:
            return False
        elif product.quantity == 0:
            return False
        else:
            return True
    
    def addProduct(product):
        pass