# Seed Categories
Category.create(title: "Phones", icon: "fa-mobile")
Category.create(title: "Laptops", icon: "fa-laptop")
Category.create(title: "Tablets", icon: "fa-tablet")
Category.create(title: "Desktops", icon: "fa-desktop")
Category.create(title: "Accessories", icon: "fa-headphones")

# Seed Products
phones = Category.find_by(title: "Phones")
phones.products.create(title: "iPhone X", price: 999.99, description: "The latest iPhone model", discount_price: nil)
phones.products.create(title: "Samsung Galaxy S10", price: 799.99, description: "A popular Android phone", discount_price: 699.99)

laptops = Category.find_by(title: "Laptops")
laptops.products.create(title: "Macbook Pro", price: 1499.99, description: "Apple's high-end laptop", discount_price: nil)
laptops.products.create(title: "Dell XPS 13", price: 1199.99, description: "A powerful Windows laptop", discount_price: 999.99)

tablets = Category.find_by(title: "Tablets")
tablets.products.create(title: "iPad Pro", price: 799.99, description: "Apple's high-end tablet", discount_price: nil)
tablets.products.create(title: "Samsung Galaxy Tab S7", price: 649.99, description: "A popular Android tablet", discount_price: 599.99)

desktops = Category.find_by(title: "Desktops")
desktops.products.create(title: "iMac", price: 1799.99, description: "Apple's high-end desktop computer", discount_price: nil)
desktops.products.create(title: "Dell XPS Tower", price: 1299.99, description: "A powerful Windows desktop computer", discount_price: 1099.99)

accessories = Category.find_by(title: "Accessories")
accessories.products.create(title: "AirPods Pro", price: 249.99, description: "Apple's high-end wireless earbuds", discount_price: nil)
accessories.products.create(title: "Wireless Gaming Mouse", price: 79.99, description: "A popular gaming accessory", discount_price: 59.99)
