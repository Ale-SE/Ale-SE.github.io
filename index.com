<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Alejandra Serrano | UI/UX Designer</title>

    <meta name="description" content="Portafolio profesional de Alejandra Serrano. Diseño UI/UX, interfaces y experiencias digitales.">

    <!-- TIPOGRAFÍA -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet">


    <!-- =====================================
         ESTILOS CSS
    ====================================== -->

    <style>

        /* CONFIGURACIÓN GENERAL */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        :root {
            --primary: #7766D8;
            --primary-dark: #5E4DBD;
            --background: #FAF9FC;
            --white: #FFFFFF;
            --dark: #24232B;
            --gray: #777580;
            --light-purple: #EEEAFE;
            --border: #EAE8F0;
        }

        body {
            font-family: 'DM Sans', sans-serif;
            background: var(--background);
            color: var(--dark);
            line-height: 1.7;
        }


        /* NAVEGACIÓN */

        .header {
            width: 100%;
            padding: 24px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: var(--white);
            position: sticky;
            top: 0;
            z-index: 100;
            border-bottom: 1px solid var(--border);
        }

        .logo {
            font-size: 23px;
            font-weight: 800;
            color: var(--dark);
            text-decoration: none;
            letter-spacing: -1px;
        }

        .logo span,
        .section-heading h2 span,
        .contact h2 span {
            color: var(--primary);
        }

        .navbar {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .navbar a {
            color: var(--dark);
            text-decoration: none;
            font-size: 14px;
            font-weight: 500;
            transition: 0.3s;
        }

        .navbar a:hover {
            color: var(--primary);
        }

        .navbar .contact-link {
            background: var(--primary);
            color: white;
            padding: 11px 22px;
            border-radius: 8px;
        }

        .navbar .contact-link:hover {
            background: var(--primary-dark);
        }


        /* PRESENTACIÓN PRINCIPAL */

        .hero {
            min-height: 600px;
            padding: 100px 8%;
            display: grid;
            grid-template-columns: 1.3fr 0.7fr;
            align-items: center;
            gap: 50px;
        }

        .hero-label,
        .section-label {
            color: var(--primary);
            font-size: 12px;
            font-weight: 700;
            letter-spacing: 2px;
        }

        .hero h1 {
            font-size: clamp(38px, 5vw, 62px);
            line-height: 1.15;
            letter-spacing: -2px;
            margin: 22px 0;
            max-width: 720px;
        }

        .hero h1 span {
            color: var(--primary);
        }

        .hero-content p {
            color: var(--gray);
            font-size: 16px;
            max-width: 570px;
            margin-bottom: 30px;
        }

        .hero-buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .btn-primary,
        .btn-secondary {
            display: inline-block;
            padding: 14px 25px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 600;
            transition: 0.3s;
        }

        .btn-primary {
            background: var(--primary);
            color: white;
        }

        .btn-primary:hover {
            background: var(--primary-dark);
            transform: translateY(-3px);
        }

        .btn-secondary {
            border: 1px solid var(--border);
            color: var(--dark);
            background: white;
        }

        .btn-secondary:hover {
            border-color: var(--primary);
            color: var(--primary);
        }


        /* TARJETA DECORATIVA */

        .hero-decoration {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .design-card {
            width: 290px;
            height: 340px;
            padding: 30px;
            border-radius: 20px;
            background: white;
            box-shadow: 0 20px 60px rgba(40,30,90,0.09);
            position: relative;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .card-number {
            position: absolute;
            top: 25px;
            right: 25px;
            color: var(--gray);
            font-size: 12px;
        }

        .design-circle {
            width: 110px;
            height: 110px;
            border-radius: 50%;
            background: linear-gradient(135deg, #C5B9FF, #7766D8);
            margin-bottom: 25px;
        }

        .design-card h3 {
            font-size: 29px;
        }

        .design-card p {
            color: var(--gray);
        }

        .design-tag {
            margin-top: 20px;
            color: var(--primary);
            font-size: 12px;
            font-weight: 600;
        }


        /* SECCIONES GENERALES */

        .section {
            padding: 100px 8%;
        }

        .section-heading {
            margin-bottom: 45px;
        }

        .section-heading h2 {
            font-size: 38px;
            letter-spacing: -1px;
            margin: 12px 0;
        }

        .section-heading p {
            color: var(--gray);
            max-width: 550px;
        }


        /* PROYECTOS */

        .projects {
            background: white;
        }

        .projects-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 35px;
        }

        .project-card {
            background: var(--background);
            border-radius: 15px;
            overflow: hidden;
            transition: 0.3s;
        }

        .project-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 15px 35px rgba(40,30,90,0.08);
        }

        .project-image {
            height: 260px;
            position: relative;
            overflow: hidden;
        }

        .project-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.4s;
        }

        .project-card:hover .project-image img {
            transform: scale(1.05);
        }

        .project-image > span {
            position: absolute;
            top: 18px;
            left: 18px;
            z-index: 2;
            background: white;
            color: var(--primary);
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 700;
        }

        .project-info {
            padding: 28px;
        }

        .project-category {
            color: var(--primary);
            font-size: 11px;
            font-weight: 700;
            letter-spacing: 1px;
        }

        .project-info h3 {
            font-size: 23px;
            margin: 10px 0;
        }

        .project-info p {
            color: var(--gray);
            font-size: 14px;
            margin-bottom: 20px;
        }

        .project-tags {
            display: flex;
            gap: 8px;
            flex-wrap: wrap;
            margin-bottom: 22px;
        }

        .project-tags span {
            padding: 6px 12px;
            border-radius: 20px;
            background: var(--light-purple);
            color: var(--primary-dark);
            font-size: 11px;
            font-weight: 600;
        }

        .project-link {
            color: var(--primary);
            text-decoration: none;
            font-weight: 700;
            font-size: 14px;
        }


        /* SOBRE MÍ */

        .about {
            display: grid;
            grid-template-columns: 1fr 0.8fr;
            align-items: center;
            gap: 70px;
        }

        .about-content p {
            color: var(--gray);
            font-size: 15px;
        }

        .about-highlight {
            background: var(--light-purple);
            padding: 40px;
            border-radius: 18px;
        }

        .highlight-symbol {
            font-size: 38px;
            color: var(--primary);
        }

        .about-highlight h3 {
            font-size: 25px;
            margin: 15px 0;
            line-height: 1.3;
        }

        .about-highlight p {
            color: var(--gray);
            font-size: 14px;
        }


        /* HABILIDADES */

        .skills {
            background: white;
        }

        .skills-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .skill-item {
            padding: 30px 20px;
            border: 1px solid var(--border);
            border-radius: 12px;
            transition: 0.3s;
        }

        .skill-item:hover {
            border-color: var(--primary);
            transform: translateY(-5px);
        }

        .skill-item > span {
            font-size: 30px;
            color: var(--primary);
        }

        .skill-item h3 {
            margin: 15px 0 8px;
            font-size: 18px;
        }

        .skill-item p {
            font-size: 13px;
            color: var(--gray);
        }


        /* CONTACTO */

        .contact {
            text-align: center;
            background: var(--light-purple);
        }

        .contact h2 {
            font-size: clamp(32px, 5vw, 48px);
            margin: 18px 0;
        }

        .contact > p {
            max-width: 550px;
            margin: 0 auto 30px;
            color: var(--gray);
        }

        .social-links {
            margin-top: 30px;
            display: flex;
            justify-content: center;
            gap: 25px;
        }

        .social-links a {
            text-decoration: none;
            color: var(--dark);
            font-size: 14px;
            font-weight: 600;
        }

        .social-links a:hover {
            color: var(--primary);
        }


        /* PIE DE PÁGINA */

        .footer {
            background: var(--dark);
            color: white;
            padding: 25px 8%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
        }

        .footer p {
            font-size: 12px;
            color: #C5C3CC;
        }

        .footer a {
            color: white;
            text-decoration: none;
            font-size: 13px;
        }


        /* RESPONSIVE: TABLET */

        @media (max-width: 900px) {

            .hero {
                grid-template-columns: 1fr;
                text-align: center;
            }

            .hero-content p {
                margin-left: auto;
                margin-right: auto;
            }

            .hero-buttons {
                justify-content: center;
            }

            .hero-decoration {
                margin-top: 20px;
            }

            .skills-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .about {
                grid-template-columns: 1fr;
            }

        }


        /* RESPONSIVE: CELULARES */

        @media (max-width: 650px) {

            .header {
                flex-direction: column;
                gap: 18px;
            }

            .navbar {
                gap: 12px;
                flex-wrap: wrap;
                justify-content: center;
            }

            .navbar a {
                font-size: 12px;
            }

            .navbar .contact-link {
                padding: 7px 12px;
            }

            .hero {
                padding: 70px 6%;
            }

            .section {
                padding: 70px 6%;
            }

            .projects-grid {
                grid-template-columns: 1fr;
            }

            .skills-grid {
                grid-template-columns: 1fr 1fr;
            }

            .section-heading h2 {
                font-size: 30px;
            }

            .footer {
                flex-direction: column;
                text-align: center;
            }

        }

    </style>

</head>


<body>

    <!-- =====================================
         ENCABEZADO Y MENÚ
    ====================================== -->

    <header class="header">

        <a href="#inicio" class="logo">
            ALEJANDRA<span>.</span>
        </a>

        <nav class="navbar">

            <a href="#inicio">Inicio</a>
            <a href="#proyectos">Proyectos</a>
            <a href="#sobre-mi">Sobre mí</a>
            <a href="#habilidades">Habilidades</a>
            <a href="#contacto" class="contact-link">Contacto</a>

        </nav>

    </header>


    <main>

        <!-- PRESENTACIÓN -->

        <section class="hero" id="inicio">

            <div class="hero-content">

                <span class="hero-label">
                    DISEÑO UI/UX · DISEÑO DIGITAL
                </span>

                <h1>
                    Diseño experiencias digitales
                    <span>que conectan con las personas.</span>
                </h1>

                <p>
                    ¡Hola! Soy Alejandra, estudiante de Ingeniería de Software
                    interesada en el diseño de interfaces y la experiencia
                    de usuario. Me gusta transformar ideas en soluciones
                    digitales funcionales, intuitivas y visualmente atractivas.
                </p>

                <div class="hero-buttons">

                    <a href="#proyectos" class="btn-primary">
                        Ver mis proyectos →
                    </a>

                    <a href="#sobre-mi" class="btn-secondary">
                        Conóceme
                    </a>

                </div>

            </div>


            <div class="hero-decoration">

                <div class="design-card">

                    <span class="card-number">01 / 04</span>

                    <div class="design-circle"></div>

                    <h3>Designing</h3>

                    <p>Ideas into experiences.</p>

                    <span class="design-tag">
                        Creative · UI/UX
                    </span>

                </div>

            </div>

        </section>


        <!-- PROYECTOS -->

        <section class="projects section" id="proyectos">

            <div class="section-heading">

                <span class="section-label">MI TRABAJO</span>

                <h2>Proyectos destacados<span>.</span></h2>

                <p>
                    Algunos de los proyectos en los que he trabajado
                    durante mi formación académica.
                </p>

            </div>


            <div class="projects-grid">


                <!-- PROYECTO 1 -->

                <article class="project-card">

                    <div class="project-image">

                        <span>01</span>

                        <img src="assets/images/pet-care.png"
                             alt="Diseño de aplicación móvil Pet Care">

                    </div>

                    <div class="project-info">

                        <span class="project-category">
                            DISEÑO UI/UX · APP MÓVIL
                        </span>

                        <h3>Pet Care App</h3>

                        <p>
                            Diseño de una aplicación móvil enfocada
                            en el cuidado, bienestar y seguimiento
                            de las mascotas.
                        </p>

                        <div class="project-tags">
                            <span>Figma</span>
                            <span>UI Design</span>
                            <span>Prototyping</span>
                        </div>

                        <a href="#" class="project-link">
                            Ver proyecto →
                        </a>

                    </div>

                </article>


                <!-- PROYECTO 2 -->

                <article class="project-card">

                    <div class="project-image">

                        <span>02</span>

                        <img src="assets/images/token-safe.png"
                             alt="Diseño de plataforma web Token Safe">

                    </div>

                    <div class="project-info">

                        <span class="project-category">
                            DISEÑO WEB · UI/UX
                        </span>

                        <h3>Token-Safe</h3>

                        <p>
                            Plataforma web de identificación médica
                            inteligente para gestionar información
                            de emergencia y contactos.
                        </p>

                        <div class="project-tags">
                            <span>Figma</span>
                            <span>Dashboard</span>
                            <span>UX Design</span>
                        </div>

                        <a href="#" class="project-link">
                            Ver proyecto →
                        </a>

                    </div>

                </article>


                <!-- PROYECTO 3 -->

                <article class="project-card">

                    <div class="project-image">

                        <span>03</span>

                        <img src="assets/images/ai-study.png"
                             alt="Diseño de plataforma educativa con IA">

                    </div>

                    <div class="project-info">

                        <span class="project-category">
                            DISEÑO WEB · PLATAFORMA
                        </span>

                        <h3>Plataforma de estudio con IA</h3>

                        <p>
                            Propuesta de plataforma digital para organizar
                            documentos y generar guías de estudio mediante
                            inteligencia artificial.
                        </p>

                        <div class="project-tags">
                            <span>Web Design</span>
                            <span>UX/UI</span>
                            <span>Dashboard</span>
                        </div>

                        <a href="#" class="project-link">
                            Ver proyecto →
                        </a>

                    </div>

                </article>


                <!-- PROYECTO 4 -->

                <article class="project-card">

                    <div class="project-image">

                        <span>04</span>

                        <img src="assets/images/accessories.png"
                             alt="Diseño de sitio web de accesorios">

                    </div>

                    <div class="project-info">

                        <span class="project-category">
                            DISEÑO WEB · FIGMA
                        </span>

                        <h3>Sitio web de accesorios</h3>

                        <p>
                            Diseño de pantallas y prototipos interactivos
                            de alta fidelidad para un sitio web de accesorios.
                        </p>

                        <div class="project-tags">
                            <span>Figma</span>
                            <span>UI Design</span>
                            <span>Prototyping</span>
                        </div>

                        <a href="#" class="project-link">
                            Ver proyecto →
                        </a>

                    </div>

                </article>


            </div>

        </section>


        <!-- SOBRE MÍ -->

        <section class="about section" id="sobre-mi">

            <div class="about-content">

                <div class="section-heading">

                    <span class="section-label">
                        UN POCO SOBRE MÍ
                    </span>

                    <h2>
                        Creatividad y tecnología en un mismo lugar<span>.</span>
                    </h2>

                </div>

                <p>
                    Soy estudiante de Ingeniería de Software en la
                    Universidad Autónoma de Querétaro. Mi interés
                    profesional está enfocado en el diseño UI/UX,
                    la creación de interfaces y el desarrollo de
                    experiencias digitales.

                    <br><br>

                    Me considero una persona creativa, organizada
                    y comprometida con el aprendizaje. Disfruto
                    trabajar en equipo, explorar nuevas ideas y
                    encontrar soluciones visuales a diferentes
                    necesidades.
                </p>

            </div>


            <div class="about-highlight">

                <span class="highlight-symbol">✳</span>

                <h3>
                    Diseñar no es solo crear algo bonito.
                </h3>

                <p>
                    Es comprender las necesidades de las personas
                    y convertirlas en experiencias sencillas,
                    útiles y funcionales.
                </p>

            </div>

        </section>


        <!-- HABILIDADES -->

        <section class="skills section" id="habilidades">

            <div class="section-heading">

                <span class="section-label">
                    LO QUE SÉ HACER
                </span>

                <h2>
                    Habilidades y herramientas<span>.</span>
                </h2>

                <p>
                    Herramientas y conocimientos que forman
                    parte de mi preparación profesional.
                </p>

            </div>


            <div class="skills-grid">

                <div class="skill-item">
                    <span>✳</span>
                    <h3>Figma</h3>
                    <p>Diseño de interfaces y prototipos.</p>
                </div>

                <div class="skill-item">
                    <span>◈</span>
                    <h3>UI Design</h3>
                    <p>Diseño visual de interfaces digitales.</p>
                </div>

                <div class="skill-item">
                    <span>◎</span>
                    <h3>UX Design</h3>
                    <p>Experiencia y navegación del usuario.</p>
                </div>

                <div class="skill-item">
                    <span>⌘</span>
                    <h3>HTML & CSS</h3>
                    <p>Estructura y estilos para páginas web.</p>
                </div>

            </div>

        </section>


        <!-- CONTACTO -->

        <section class="contact section" id="contacto">

            <span class="section-label">
                ¿TRABAJAMOS JUNTOS?
            </span>

            <h2>
                Hagamos realidad nuevas ideas<span>.</span>
            </h2>

            <p>
                Estoy interesada en aprender, colaborar
                y participar en nuevos proyectos de diseño digital.
            </p>

            <a href="mailto:TU-CORREO@EJEMPLO.COM"
               class="btn-primary">
                Envíame un correo →
            </a>


            <div class="social-links">

                <a href="https://github.com/TU-USUARIO" target="_blank">
                    GitHub
                </a>

                <a href="#" target="_blank">
                    LinkedIn
                </a>

            </div>

        </section>

    </main>


    <!-- PIE DE PÁGINA -->

    <footer class="footer">

        <p>
            © 2026 Alejandra Serrano. Todos los derechos reservados.
        </p>

        <a href="#inicio">
            Volver arriba ↑
        </a>

    </footer>

</body>

</html>
