# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
    {   
        first_name: 'John',
        last_name: 'Smith',
        email: 'pf@farmers.com',
        address: '34 Moon St, E6W 1TY, London',
        phone: '07345324353',
        isAdmin: false,
        password: 'wrsdfdqs',
        farmer_id: 1

    },
    {   
        first_name: 'Bob',
        last_name: 'Dylan',
        email: 'pfeff@farmers.com',
        address: '34 Star St, E6W 1TY, CharkFarm',
        phone: '23563483444',
        isAdmin: false,
        password: 'cklamsk;d.a,',
        customer_id: 1

    }
])

farmers = Farmer.create([
    {   
        farm: 'Patch Farm',
        user_id: users.first.id
    }
])

products = Product.create([
    {   
        name: 'Pears',
        price: 2.44,
        quantity: '1 kg' ,
        farmer_id: 1,
        url_img: 'https://media.self.com/photos/5b6b0bd7ff2fab32610fafc2/4:3/w_728,c_limit/pears.jpg'
    },
    {
        name: 'Artichokes',
        price: 2.44,
        quantity: '3 pieces' ,
        farmer_id: 1,
        url_img: 'https://images.unsplash.com/photo-1518735869015-566a18eae4be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Apples',
        price: 2.44,
        quantity: '1 kg' ,
        farmer_id: 1,
        url_img: 'https://images.unsplash.com/photo-1549301014-95d119f5c960?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Beef',
        price: 2.44,
        quantity: '500g' ,
        farmer_id: 2,
        url_img: 'http://cdn.shopify.com/s/files/1/1844/0771/products/84b26ca83f6ab9914c49f65957d4329f_grande.jpg?v=1511148760'
    },
    {
        name: 'Eggs',
        price: 2.44,
        quantity: 'Half dozen' ,
        farmer_id: 2,
        url_img: 'http://cmcfood.com/wp-content/uploads/2015/10/TFH-Org-LRG-Top-800.jpg'
    },
   
    {
        name: 'Brussels Sprouts',
        price: 2.44,
        quantity: '500g' ,
        farmer_id: 2,
        url_img: 'https://images.unsplash.com/photo-1438118907704-7718ee9a191a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
    },
    {
        name: 'Honey',
        price: 2.44,
        quantity: '1 pot' ,
        farmer_id: 2,
        url_img: 'http://cdn.shopify.com/s/files/1/1533/8387/products/Honey_grande.jpg?v=1544011129'
    },
   
    {
        name: 'Spinach',
        price: 2.44,
        quantity: '500g' ,
        farmer_id: 1,
        url_img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB98mv6B3Vp2UgJnCDFqTUDT6TobU-R7xYUkgqNBkwCQjL9O5Dtg'
    },
    {
        name: 'Strawberries',
        price: 2.44,
        quantity: '500g' ,
        farmer_id: 1,
        url_img: 'https://i2.wp.com/gardenmuseum.org.uk/wp-content/uploads/2019/05/Strawberries.jpg?resize=640%2C360&ssl=1'
    },
    {
        name: 'Peas',
        price: 2.44,
        quantity: '500g' ,
        farmer_id: 1,
        url_img: 'https://portalvhds26k4f5tktj3ck.blob.core.windows.net/spotpics/sp42263.jpg'
    },
    {
        name: 'Melon',
        price: 2.44,
        quantity: '3 pieces' ,
        farmer_id: 2,
        url_img: 'https://www.adaptiveseeds.com/wp-content/uploads/2014/12/p-7997-melon_farthest_north4.jpg'
    },
    {
        name: 'Cucumbers',
        price: 2.44,
        quantity: '500g' ,
        farmer_id: 1,
        url_img: 'https://munchies-images.vice.com/wp_upload/cucumber-tesco-valentines-day.jpg?crop=0.7111111111111111xw%3A1xh%3Bcenter%2Ccenter&resize=650%3A*&output-quality=55'
    },
    {
        name: 'Tomatoes',
        price: 2.44,
        quantity: '500g' ,
        farmer_id: 2,
        url_img: 'https://www.mamanatural.com/wp-content/uploads/28-Things-to-Do-With-Too-Many-Tomatoes-tips-by-Mama-Natural-750x422.jpg'
    },
    {
        name: 'Rye Bread',
        price: 2.44,
        quantity: '1 piece',
        farmer_id: 1,
        url_img: 'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--77451_11.jpg?itok=7W6mnqnB'
    },
    {
        name: 'Rhubarb',
        price: 2.44,
        quantity: '500g' ,
        farmer_id: 1,
        url_img: 'https://www.lesboitesameuh.com/images/Image/Rhubarbe-500-g---Isabelle-Glatre-91.jpg'
    },
    {
        name: 'Tuscan Kale',
        price: 2.44,
        quantity: '1 bunch' ,
        farmer_id: 1,
        url_img: 'http://wildco.co.uk/veggies/wp-content/uploads/2016/05/tuscan-kale-alt.jpg'
    },
    {
        name: 'Green apples',
        price: 2.44,
        quantity: '1kg' ,
        farmer_id: 1,
        url_img: 'https://www.concordmonitor.com/getattachment/f428f090-1f79-4bfb-b837-381835570822/pectin-lw-080417-ph3'
    },
    {
        name: 'Blue Potatoes',
        price: 2.44,
        quantity: '2kg' ,
        farmer_id: 2,
        url_img: 'https://cdn.dtbrownseeds.co.uk/product-images/op/z/POT-154.jpg'
    },
    {
        name: 'Sage',
        price: 2.44,
        quantity: '1 bunch' ,
        farmer_id: 1,
        url_img: 'https://img.publishthis.com/images/clientImages/cid1235/2015/12/b/b/4/bb4feeacc980e72f3163b4fef0753abe_clientImage_799x534_xlarge_original_1.jpg'
    },
    {
        name: 'Broccoli',
        price: 2.44,
        quantity: '3 pieces' ,
        farmer_id: 1,
        url_img: 'https://www.sciencedaily.com/images/2019/05/190516142913_1_540x360.jpg'
    },
    {
        name: 'Jerusalem Artichokes',
        price: 2.44,
        quantity: '500g',
        farmer_id: 2,
        url_img: 'http://eatdrinkpaleo.com.au/wp-content/uploads/2016/10/jerusalem-artichoke-recipes.jpg'
    },
    {
        name: 'Wild Scottish Salmon',
        price: 10.50,
        quantity: '400g',
        farmer_id: 2,
        url_img: 'https://images.costco-static.com/ImageDelivery/imageService?profileId=12026540&itemId=1214619-847&recipeName=680'
    }
    
])

baskets = Basket.create([
    {
        customer_id: 1
    }
])

categories = Category.create([
    {
        name: 'Fruit'
    },
    {
        name: 'Vegetable'
    },
    {
        name: 'Bakery'
    },
    {
        name: 'Meat'
    },
    {
        name: 'Fish'
    },
    {
        name: 'Pantry'
    },
    {
        name: 'Farm Boxes'
    }
])

baskets_products = BasketProduct.create([
    {
        basket_id: 1,
        product_id: 2
    },
    {
        basket_id: 1,
        product_id: 3
    },
    {
        basket_id: 1,
        product_id: 4
    },
    {
        basket_id: 1,
        product_id: 5
    },
    {
        basket_id: 1,
        product_id: 6
    },
])

customers = Customer.create([
    {
        user_id: users.last.id
    }
    
])
