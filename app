<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AgriConnect - Sua Plataforma Agrícola Completa</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Cores temáticas para o agronegócio */
        :root {
            --verde-escuro: #2E7D32;
            --verde-claro: #4CAF50;
            --marrom: #795548;
            --laranja: #FF9800;
            --bege: #FFF9C4;
            --cinza-claro: #f5f5f5;
        }
        
        /* Estilos básicos */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: var(--cinza-claro);
            color: #333;
            line-height: 1.6;
        }
        
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }
        
        /* Header simplificado */
        header {
            background-color: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            padding: 15px 0;
            position: sticky;
            top: 0;
            z-index: 100;
        }
        
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            display: flex;
            align-items: center;
        }
        
        .logo i {
            font-size: 28px;
            color: var(--verde-escuro);
            margin-right: 10px;
        }
        
        .logo h1 {
            font-size: 22px;
            color: var(--verde-escuro);
        }
        
        /* Menu mobile-friendly */
        nav ul {
            display: flex;
            list-style: none;
        }
        
        nav li {
            margin-left: 20px;
        }
        
        nav a {
            text-decoration: none;
            color: #333;
            font-weight: 500;
            font-size: 16px;
        }
        
        nav a:hover {
            color: var(--verde-escuro);
        }
        
        .menu-toggle {
            display: none;
            font-size: 24px;
            cursor: pointer;
        }
        
        /* Conteúdo principal */
        .hero {
            background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('https://images.unsplash.com/photo-1625246333195-78d9c38ad449?ixlib=rb-4.0.3');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            padding: 80px 20px;
            margin-bottom: 40px;
        }
        
        .hero h2 {
            font-size: 2.2rem;
            margin-bottom: 20px;
        }
        
        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 30px;
        }
        
        .btn {
            display: inline-block;
            padding: 12px 25px;
            background-color: var(--verde-escuro);
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 500;
            transition: all 0.3s;
        }
        
        .btn:hover {
            background-color: var(--verde-claro);
            transform: translateY(-3px);
        }
        
        /* Seção de serviços */
        .services {
            padding: 50px 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 40px;
        }
        
        .section-title h2 {
            font-size: 2rem;
            color: var(--verde-escuro);
            margin-bottom: 15px;
        }
        
        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
        }
        
        .service-card {
            background: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s;
        }
        
        .service-card:hover {
            transform: translateY(-10px);
        }
        
        .service-icon {
            background-color: var(--verde-claro);
            height: 120px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .service-icon i {
            font-size: 3rem;
            color: white;
        }
        
        .service-content {
            padding: 20px;
        }
        
        .service-content h3 {
            margin-bottom: 10px;
            color: var(--verde-escuro);
        }
        
        /* Seção de aplicativo */
        .app-section {
            background-color: var(--verde-claro);
            padding: 60px 0;
            color: white;
            text-align: center;
        }
        
        .app-buttons {
            margin-top: 20px;
        }
        
        .app-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: white;
            color: var(--verde-escuro);
            text-decoration: none;
            border-radius: 5px;
            margin: 0 10px;
            font-weight: 500;
        }
        
        /* Formulário de contato simplificado */
        .contact {
            padding: 60px 0;
            background-color: white;
        }
        
        .contact-form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 500;
        }
        
        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        
        .form-group textarea {
            height: 150px;
        }
        
        /* Footer */
        footer {
            background-color: #333;
            color: white;
            padding: 40px 0 20px;
            text-align: center;
        }
        
        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }
        
        .footer-column h3 {
            margin-bottom: 20px;
            font-size: 1.2rem;
            color: var(--verde-claro);
        }
        
        .footer-column ul {
            list-style: none;
        }
        
        .footer-column li {
            margin-bottom: 10px;
        }
        
        .footer-column a {
            color: #ccc;
            text-decoration: none;
        }
        
        .footer-column a:hover {
            color: white;
        }
        
        .copyright {
            padding-top: 20px;
            border-top: 1px solid #444;
            color: #ccc;
        }
        
        /* Responsividade */
        @media (max-width: 768px) {
            .menu-toggle {
                display: block;
            }
            
            nav ul {
                display: none;
                flex-direction: column;
                position: absolute;
                top: 70px;
                left: 0;
                width: 100%;
                background-color: white;
                box-shadow: 0 5px 10px rgba(0,0,0,0.1);
                padding: 20px;
            }
            
            nav ul.show {
                display: flex;
            }
            
            nav li {
                margin: 10px 0;
            }
            
            .hero h2 {
                font-size: 1.8rem;
            }
            
            .hero p {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <div class="header-content">
                <div class="logo">
                    <i class="fas fa-leaf"></i>
                    <h1>AgriConnect</h1>
                </div>
                
                <div class="menu-toggle" id="menuToggle">
                    <i class="fas fa-bars"></i>
                </div>
                
                <nav>
                    <ul id="menu">
                        <li><a href="#">Início</a></li>
                        <li><a href="#">Serviços</a></li>
                        <li><a href="#">Como Funciona</a></li>
                        <li><a href="#">Contato</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h2>Conectamos o campo ao mundo</h2>
            <p>Uma plataforma simples para encomendas agrícolas, comércio internacional, entregas e transporte</p>
            <a href="#contact" class="btn">Começar agora</a>
        </div>
    </section>

    <!-- Services -->
    <section class="services">
        <div class="container">
            <div class="section-title">
                <h2>Nossos Serviços</h2>
                <p>Tudo o que você precisa para seu negócio agrícola</p>
            </div>
            
            <div class="services-grid">
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-seedling"></i>
                    </div>
                    <div class="service-content">
                        <h3>Produtos Agrícolas</h3>
                        <p>Compre e venda produtos diretamente dos produtores com garantia de qualidade.</p>
                    </div>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-globe-americas"></i>
                    </div>
                    <div class="service-content">
                        <h3>Comércio Internacional</h3>
                        <p>Facilitamos importação e exportação com documentação simplificada.</p>
                    </div>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-truck"></i>
                    </div>
                    <div class="service-content">
                        <h3>Entregas</h3>
                        <p>Logística completa com rastreamento para todo tipo de carga agrícola.</p>
                    </div>
                </div>
                
                <div class="service-card">
                    <div class="service-icon">
                        <i class="fas fa-bus"></i>
                    </div>
                    <div class="service-content">
                        <h3>Transporte</h3>
                        <p>Viagens para zonas rurais com conforto e segurança.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- App Section -->
    <section class="app-section">
        <div class="container">
            <h2>Baixe nosso aplicativo</h2>
            <p>Disponível para iOS e Android</p>
            <div class="app-buttons">
                <a href="#" class="app-btn">
                    <i class="fab fa-google-play"></i> Google Play
                </a>
                <a href="#" class="app-btn">
                    <i class="fab fa-apple"></i> App Store
                </a>
            </div>
        </div>
    </section>

    <!-- Contact Form -->
    <section class="contact" id="contact">
        <div class="container">
            <div class="section-title">
                <h2>Entre em Contato</h2>
                <p>Estamos aqui para ajudar seu negócio</p>
            </div>
            
            <div class="contact-form">
                <div class="form-group">
                    <label for="name">Nome</label>
                    <input type="text" id="name" placeholder="Seu nome completo">
                </div>
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" placeholder="Seu melhor email">
                </div>
                
                <div class="form-group">
                    <label for="message">Mensagem</label>
                    <textarea id="message" placeholder="Como podemos ajudar?"></textarea>
                </div>
                
                <button type="submit" class="btn">Enviar Mensagem</button>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>AgriConnect</h3>
                    <ul>
                        <li><a href="#">Sobre nós</a></li>
                        <li><a href="#">Como funciona</a></li>
                        <li><a href="#">Time</a></li>
                    </ul>
                </div>
                
                <div class="footer-column">
                    <h3>Serviços</h3>
                    <ul>
                        <li><a href="#">Produtos Agrícolas</a></li>
                        <li><a href="#">Comércio Internacional</a></li>
                        <li><a href="#">Entregas</a></li>
                        <li><a href="#">Transporte</a></li>
                    </ul>
                </div>
                
                <div class="footer-column">
                    <h3>Suporte</h3>
                    <ul>
                        <li><a href="#">Contato</a></li>
                        <li><a href="#">Perguntas Frequentes</a></li>
                        <li><a href="#">Política de Privacidade</a></li>
                    </ul>
                </div>
            </div>
            
            <div class="copyright">
                <p>&copy; 2023 AgriConnect - Todos os direitos reservados</p>
            </div>
        </div>
    </footer>

    <script>
        // JavaScript simples para o menu mobile
        document.getElementById('menuToggle').addEventListener('click', function() {
            document.getElementById('menu').classList.toggle('show');
        });
        
        // Função simples para o formulário
        document.querySelector('.btn[type="submit"]').addEventListener('click', function(e) {
            e.preventDefault();
            alert('Obrigado pelo seu interesse! Em uma aplicação real, esta mensagem seria enviada para nosso time.');
        });
    </script>
</body>
</html>