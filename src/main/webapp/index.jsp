<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Premium E‑Commerce</title>

    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary: #6366f1;
            --primary-dark: #4f46e5;
            --secondary: #0f172a;
            --accent: #f43f5e;
            --bg: #f8fafc;
            --card-bg: #ffffff;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --radius-lg: 24px;
            --radius-md: 16px;
            --shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05), 0 8px 10px -6px rgba(0, 0, 0, 0.05);
            --container: 1280px;
        }

        * { box-sizing: border-box; transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1); }
        body {
            margin: 0;
            font-family: 'Plus Jakarta Sans', sans-serif;
            color: var(--text-main);
            background: var(--bg);
            line-height: 1.6;
        }

        .container { width: 92%; max-width: var(--container); margin: 0 auto; }
        
        /* Glass Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(0,0,0,0.05);
            padding: 15px 0;
        }

        .header-inner { display: flex; align-items: center; justify-content: space-between; }
        
        .brand {
            font-family: 'Playfair Display', serif;
            font-size: 26px;
            font-weight: 700;
            color: var(--secondary);
            text-decoration: none;
        }
        .brand span { color: var(--primary); }

        nav ul { display: flex; list-style: none; gap: 30px; margin: 0; padding: 0; }
        nav a { text-decoration: none; font-weight: 600; color: var(--text-main); font-size: 15px; }
        nav a:hover { color: var(--primary); }

        .search-bar {
            background: #f1f5f9;
            padding: 8px 16px;
            border-radius: 99px;
            display: flex;
            align-items: center;
            width: 300px;
        }
        .search-bar input { background: none; border: none; outline: none; padding-left: 10px; width: 100%; }

        /* Hero Section */
        .hero {
            padding: 100px 0;
            background: linear-gradient(135deg, #eef2ff 0%, #f8fafc 100%);
            border-radius: 0 0 80px 80px;
            margin-bottom: 60px;
            text-align: center;
        }

        .hero h1 {
            font-family: 'Playfair Display', serif;
            font-size: clamp(40px, 6vw, 72px);
            margin-bottom: 20px;
            line-height: 1.1;
        }

        .hero p { color: var(--text-muted); font-size: 18px; max-width: 600px; margin: 0 auto 30px; }

        .btn {
            padding: 14px 32px;
            border-radius: 99px;
            font-weight: 700;
            cursor: pointer;
            border: none;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            text-decoration: none;
        }

        .btn-primary { background: var(--primary); color: white; box-shadow: 0 10px 20px -5px rgba(99, 102, 241, 0.4); }
        .btn-primary:hover { transform: translateY(-3px); background: var(--primary-dark); }

        /* Category Pill Design */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 20px;
            margin-bottom: 80px;
        }

        .cat-card {
            background: var(--card-bg);
            padding: 30px 20px;
            border-radius: var(--radius-md);
            text-align: center;
            cursor: pointer;
            border: 1px solid transparent;
        }

        .cat-card:hover {
            border-color: var(--primary);
            box-shadow: var(--shadow);
            transform: scale(1.05);
        }

        .cat-card i { font-size: 30px; color: var(--primary); margin-bottom: 15px; }

        /* Product Cards */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
        }

        .product-card {
            background: var(--card-bg);
            border-radius: var(--radius-md);
            overflow: hidden;
            position: relative;
            box-shadow: var(--shadow);
        }

        .product-card:hover { transform: translateY(-10px); }

        .product-img-wrapper { position: relative; height: 320px; overflow: hidden; }
        .product-img-wrapper img { width: 100%; height: 100%; object-fit: cover; }

        .badge {
            position: absolute;
            top: 15px;
            left: 15px;
            background: var(--accent);
            color: white;
            padding: 4px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 700;
        }

        .product-info { padding: 20px; }
        .product-info h3 { margin: 0 0 10px; font-size: 18px; }
        .price-tag { font-size: 20px; font-weight: 800; color: var(--primary); }
        
        .add-to-cart {
            width: 100%;
            background: var(--secondary);
            color: white;
            border: none;
            padding: 12px;
            border-radius: 12px;
            margin-top: 15px;
            font-weight: 600;
            cursor: pointer;
        }

        .add-to-cart:hover { background: var(--primary); }

        /* Flash Sale Banner */
        .flash-sale {
            background: var(--secondary);
            color: white;
            border-radius: var(--radius-lg);
            padding: 60px;
            margin: 100px 0;
            display: flex;
            align-items: center;
            gap: 40px;
            position: relative;
            overflow: hidden;
        }

        .timer-circles { display: flex; gap: 15px; margin: 30px 0; }
        .time-node {
            background: rgba(255,255,255,0.1);
            width: 70px;
            height: 70px;
            border-radius: 50%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border: 1px solid rgba(255,255,255,0.2);
        }

        /* Footer */
        footer { background: #fff; padding: 80px 0 30px; border-top: 1px solid #eee; }

        @media (max-width: 768px) {
            .header-inner { flex-direction: column; gap: 20px; }
            .search-bar { width: 100%; }
            .flash-sale { flex-direction: column; padding: 40px 20px; text-align: center; }
            .hero h1 { font-size: 36px; }
        }
    </style>
</head>
<body>

    <header>
        <div class="container header-inner">
            <a href="#" class="brand">Nexus<span>Shop</span></a>
            
            <nav>
                <ul>
                    <li><a href="#">New Arrivals</a></li>
                    <li><a href="#">Best Sellers</a></li>
                    <li><a href="#deals">Flash Sale</a></li>
                </ul>
            </nav>

            <div style="display: flex; align-items: center; gap: 20px;">
                <div class="search-bar">
                    <i class="fas fa-search"></i>
                    <input type="text" id="searchInput" placeholder="Search brands...">
                </div>
                <div style="position: relative; cursor: pointer;">
                    <i class="fas fa-shopping-bag" style="font-size: 22px;"></i>
                    <span id="cartCount" style="position: absolute; top: -10px; right: -10px; background: var(--primary); color: white; border-radius: 50%; width: 20px; height: 20px; font-size: 11px; display: flex; align-items: center; justify-content: center;">0</span>
                </div>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <h1>Elevate Your Lifestyle <br>With Curated Goods</h1>
                <p>Experience the intersection of high-end fashion and cutting edge technology. Designed for the modern individual.</p>
                <div style="display: flex; gap: 15px; justify-content: center;">
                    <a href="#products" class="btn btn-primary">Start Shopping <i class="fas fa-arrow-right"></i></a>
                    <a href="#" class="btn" style="background: white; border: 1px solid #ddd;">View Lookbook</a>
                </div>
            </div>
        </section>

        <section class="container">
            <h2 style="font-family: 'Playfair Display'; margin-bottom: 40px; font-size: 32px;">Shop Categories</h2>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <section class="container" id="products">
            <h2 style="font-family: 'Playfair Display'; margin-bottom: 40px; font-size: 32px;">Trending Now</h2>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <section class="container" id="deals">
            <div class="flash-sale">
                <div style="flex: 1;">
                    <span style="color: var(--primary); font-weight: 800; letter-spacing: 2px;">LIMITED OFFER</span>
                    <h2 style="font-size: 48px; font-family: 'Playfair Display'; margin: 10px 0;">MacBook Air M3</h2>
                    <p style="opacity: 0.8; font-size: 18px;">The latest silicon chip in the world's most loved laptop. Save $200 for a limited time.</p>
                    
                    <div class="timer-circles">
                        <div class="time-node"><strong id="dealHours">00</strong><small>Hrs</small></div>
                        <div class="time-node"><strong id="dealMinutes">00</strong><small>Min</small></div>
                        <div class="time-node"><strong id="dealSeconds">00</strong><small>Sec</small></div>
                    </div>
                    
                    <button class="btn btn-primary" id="buyDeal">Claim Deal Now</button>
                </div>
                <div style="flex: 1; text-align: center;">
                    <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600" alt="Macbook" style="width: 100%; border-radius: 20px; box-shadow: 0 30px 60px rgba(0,0,0,0.3);">
                </div>
            </div>
        </section>
    </main>

    <footer class="container">
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 40px; padding-bottom: 50px;">
            <div>
                <a href="#" class="brand">Nexus<span>Shop</span></a>
                <p style="color: var(--text-muted); margin-top: 20px;">Defining the future of e-commerce with seamless experiences and premium curation.</p>
            </div>
            <div>
                <h4>Explore</h4>
                <p>Latest Drops</p>
                <p>Collections</p>
                <p>Gift Cards</p>
            </div>
            <div>
                <h4>Support</h4>
                <p>Help Center</p>
                <p>Shipping Policy</p>
                <p>Sustainability</p>
            </div>
        </div>
        <div style="text-align: center; border-top: 1px solid #eee; padding-top: 30px; color: var(--text-muted); font-size: 14px;">
            &copy; 2026 NexusShop International. All rights reserved.
        </div>
    </footer>

    <script>
        const CATEGORIES = [
            { name: 'Phones', icon: 'fa-mobile-screen-button' },
            { name: 'Laptops', icon: 'fa-laptop' },
            { name: 'Audio', icon: 'fa-headphones-simple' },
            { name: 'Wearables', icon: 'fa-watch-apple' },
            { name: 'Cameras', icon: 'fa-camera' },
            { name: 'Shoes', icon: 'fa-shoe-prints' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 15 Pro', price: 999, badge: 'New', img: 'https://images.unsplash.com/photo-1696446701796-da61225697cc?auto=format&fit=crop&w=600' },
            { id: 2, title: 'Studio Headphones', price: 349, badge: 'Trend', img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600' },
            { id: 3, title: 'Minimalist Watch', price: 180, badge: 'Sale', img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600' },
            { id: 4, title: 'Performance Sneakers', price: 120, badge: null, img: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600' }
        ];

        let cart = 0;

        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            grid.innerHTML = CATEGORIES.map(cat => `
                <div class="cat-card">
                    <i class="fas ${cat.icon}"></i>
                    <h3>${cat.name}</h3>
                </div>
            `).join('');
        }

        function renderProducts() {
            const grid = document.getElementById('productsGrid');
            grid.innerHTML = PRODUCTS.map(p => `
                <div class="product-card">
                    <div class="product-img-wrapper">
                        ${p.badge ? `<span class="badge">${p.badge}</span>` : ''}
                        <img src="${p.img}" alt="${p.title}">
                    </div>
                    <div class="product-info">
                        <h3>${p.title}</h3>
                        <div class="price-tag">$${p.price}</div>
                        <button class="add-to-cart" onclick="addToCart()">Add to Bag</button>
                    </div>
                </div>
            `).join('');
        }

        function addToCart() {
            cart++;
            document.getElementById('cartCount').innerText = cart;
        }

        // Deal Timer
        setInterval(() => {
            const now = new Date();
            document.getElementById('dealHours').innerText = String(23 - now.getHours()).padStart(2, '0');
            document.getElementById('dealMinutes').innerText = String(59 - now.getMinutes()).padStart(2, '0');
            document.getElementById('dealSeconds').innerText = String(59 - now.getSeconds()).padStart(2, '0');
        }, 1000);

        // Init
        renderCategories();
        renderProducts();
    </script>
</body>
</html>
