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

farmers = Farmer.create([
    {   
        farm: 'Patch Farm',
        user_id: users.first.id
    }
])

products = Product.create([
    {   
        name: 'Pears',
        price: 2.50,
        quantity: '1 kg',
        category_id: 1,
        farmer_id: 1,
        url_img: 'https://media.self.com/photos/5b6b0bd7ff2fab32610fafc2/4:3/w_728,c_limit/pears.jpg'
    },
    {
        name: 'Artichokes',
        price: 3.60,
        quantity: '3 pieces',
        category_id: 2,
        farmer_id: 1,
        url_img: 'https://images.unsplash.com/photo-1518735869015-566a18eae4be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Apples',
        price: 2,
        quantity: '1 kg',
        category_id: 1,
        farmer_id: 1,
        url_img: 'https://images.unsplash.com/photo-1549301014-95d119f5c960?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'
    },
    {
        name: 'Beef',
        price: 8.50,
        quantity: '500g',
        category_id: 4,
        farmer_id: 2,
        url_img: 'http://cdn.shopify.com/s/files/1/1844/0771/products/84b26ca83f6ab9914c49f65957d4329f_grande.jpg?v=1511148760'
    },
    {
        name: 'Brussels Sprouts',
        price: 2,
        quantity: '500g',
        category_id: 2,
        farmer_id: 2,
        url_img: 'https://images.unsplash.com/photo-1438118907704-7718ee9a191a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
    },
    {
        name: 'Spinach',
        price: 1.50,
        quantity: '500g',
        category_id: 2,
        farmer_id: 1,
        url_img: 'https://www.bbcgoodfood.com/sites/default/files/glossary/spinach.jpg'
    },
    {
        name: 'Strawberries',
        price: 2.50,
        quantity: '500g',
        category_id: 1,
        farmer_id: 1,
        url_img: 'https://i2.wp.com/gardenmuseum.org.uk/wp-content/uploads/2019/05/Strawberries.jpg?resize=640%2C360&ssl=1'
    },
    {
        name: 'Peas',
        price: 2,
        quantity: '500g',
        category_id: 2,
        farmer_id: 1,
        url_img: 'https://portalvhds26k4f5tktj3ck.blob.core.windows.net/spotpics/sp42263.jpg'
    },
    {
        name: 'Melon',
        price: 3,
        quantity: '3 pieces',
        category_id: 1,
        farmer_id: 2,
        url_img: 'https://www.adaptiveseeds.com/wp-content/uploads/2014/12/p-7997-melon_farthest_north4.jpg'
    },
    {
        name: 'Cucumbers',
        price: 2,
        quantity: '500g',
        category_id: 2,
        farmer_id: 1,
        url_img: 'https://munchies-images.vice.com/wp_upload/cucumber-tesco-valentines-day.jpg?crop=0.7111111111111111xw%3A1xh%3Bcenter%2Ccenter&resize=650%3A*&output-quality=55'
    },
    {
        name: 'Tomatoes',
        price: 3.50,
        quantity: '500g',
        category_id: 1,
        farmer_id: 2,
        url_img: 'https://www.mamanatural.com/wp-content/uploads/28-Things-to-Do-With-Too-Many-Tomatoes-tips-by-Mama-Natural-750x422.jpg'
    },
    {
        name: 'Rye Bread',
        price: 6,
        quantity: '1 piece',
        category_id: 3,
        farmer_id: 1,
        url_img: 'https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--77451_11.jpg?itok=7W6mnqnB'
    },
    {
        name: 'Rhubarb',
        price: 5,
        quantity: '500g',
        category_id: 1,
        farmer_id: 1,
        url_img: 'https://www.lesboitesameuh.com/images/Image/Rhubarbe-500-g---Isabelle-Glatre-91.jpg'
    },
    {
        name: 'Tuscan Kale',
        price: 1.50,
        quantity: '1 bunch',
        category_id: 2,
        farmer_id: 1,
        url_img: 'http://wildco.co.uk/veggies/wp-content/uploads/2016/05/tuscan-kale-alt.jpg'
    },
    {
        name: 'Green apples',
        price: 2,
        quantity: '1kg',
        category_id: 1,
        farmer_id: 1,
        url_img: 'https://www.concordmonitor.com/getattachment/f428f090-1f79-4bfb-b837-381835570822/pectin-lw-080417-ph3'
    },
    {
        name: 'Blue Potatoes',
        price: 2,
        quantity: '2kg',
        category_id: 2,
        farmer_id: 2,
        url_img: 'https://cdn.dtbrownseeds.co.uk/product-images/op/z/POT-154.jpg'
    },
    {
        name: 'Broccoli',
        price: 1.50,
        quantity: '3 pieces',
        category_id: 2,
        farmer_id: 1,
        url_img: 'https://www.sciencedaily.com/images/2019/05/190516142913_1_540x360.jpg'
    },
    {
        name: 'Jerusalem Artichokes',
        price: 2.50,
        quantity: '500g',
        category_id: 2,
        farmer_id: 2,
        url_img: 'http://eatdrinkpaleo.com.au/wp-content/uploads/2016/10/jerusalem-artichoke-recipes.jpg',
    },
    {
        name: 'Wild Scottish Salmon',
        price: 10.50,
        quantity: '400g',
        farmer_id: 2,
        category_id: 5,
        url_img: 'https://images.costco-static.com/ImageDelivery/imageService?profileId=12026540&itemId=1214619-847&recipeName=680'
    }
])

baskets = Basket.create([
    {
        customer_id: 1
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
