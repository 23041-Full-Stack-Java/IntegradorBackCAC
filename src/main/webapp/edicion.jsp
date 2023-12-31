<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Conferencia Buenos Aires</title>

    <!-- <Etiquetas meta utiles para mejor posicionamiento de buscador -->
    <meta
      name="author"
      content="Alejandra R. de Cajal - Comisión 23041 - Prof. Facundo Coronel"
    />
    <meta name="description" content="TPI de Front-End" />
    <meta
      name="keywords"
      content="codoacodo, frontend, html, css, bootstrap, javascript"
    />

    <!-- Bootstrap 5.3.0 -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>

    <!-- Hoja de estilos -->
    <link rel="stylesheet" href="style.css" />
  </head>

  <body>
    <!-- Header -->
    <header class="header">
      <!-- Barra de navegación -->
      <div class="navegacion">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">
          <div class="container-fluid">
            <a class="navbar-brand" href="index.html">
              <img src="images/codoacodo.png" width="100px" alt="Codo a Codo" />
              Conf Bs As
            </a>
            <button
              class="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarNav"
              aria-controls="navbarNav"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"></span>
            </button>
            <div
              class="collapse navbar-collapse justify-content-end"
              id="navbarNav"
            >
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#"
                    >La conferencia</a
                  >
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#oradores">Los oradores</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#lugar">El lugar y la fecha</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#formulario"
                    >Conviértete en orador</a
                  >
                </li>
                <li class="nav-item">
                  <a class="nav-link text-success" href="comprar.html"
                    >Comprar tickets</a
                  >
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </header>

    <section class="tickets">
      <div class="container">
        <div class="row row-cols-md-4 m-3">

        <div class="card border-primary text-center m-3">
          <div class="card-body">
            <h5 class="card-title">Estudiantes</h5>
            <p class="card-text">Tienen un descuento</p>
            <h6>80%</h6>
            <p class="card-text">
              <small class="text-muted">* presentar documentación</small>
            </p>
          </div>
        </div>

        <div class="card border-success text-center m-3">
          <div class="card-body">
            <h5 class="card-title">Trainee</h5>
            <p class="card-text">Tienen un descuento</p>
            <h6>50%</h6>
            <p class="card-text">
              <small class="text-muted">* presentar documentación</small>
            </p>
          </div>
        </div>

        <div class="card border-warning text-center m-3">
          <div class="card-body">
            <h5 class="card-title">Junior</h5>
            <p class="card-text">Tienen un descuento.</p>
            <h6>15%</h6>
            <p class="card-text">
              <small class="text-muted">* presentar documentación</small>
            </p>
          </div>
        </div>
      </div>
       </div>
    </section>

    <section class="formulario">
      <div class="container">
        <div class="titulos text-center">
          <h6>VENTA</h6>
          <h4>VALOR DE TICKET $200</h4>
        </div>
      </div>

      <div class="container">
		<form class="formulario" id="formulario" name="formulario" action="update.jsp" method="get">

          <div class="row g-3">
            <div class="col-md-6">
              <input
                type="text"
                value="<%= request.getParameter("nombre")%>"
                class="form-control"
                placeholder="Nombre"
                aria-label="Nombre"
                id="nombre"
                name="nombre"
              />
            </div>

            <div class="col-md-6">
              <input
                type="text"
                value="<%= request.getParameter("apellido")%>"
                class="form-control"
                placeholder="Apellido"
                aria-label="Apellido"
                id="apellido"
                name="apellido"
              />
            </div>

            <div class="col-12">
              <label for="email" class="form-label"></label>
              <input
                type="email"
                value="<%= request.getParameter("email")%>"
                class="form-control"
                placeholder="Correo"
                id="email"
                name="email"
              />
            </div>

            <div class="col-md-6">
              <label for="cantidad" class="form-label">Cantidad</label>
              <input
                type="text"
                value="<%= request.getParameter("cantidad")%>"
                class="form-control"
                placeholder="Cantidad"
                id="cantidad"
                name="cantidad"
              />
            </div>

            <div class="col-md-6">
              <label for="categoria" class="form-label">Categoria</label>
              <select class="form-select" name="categoria" aria-label="Default select example" id="categoria">
                <option selected=""><%= request.getParameter("categoria") %></option>
                <option value="Estudiante">Estudiante</option>
                <option value="Trainee">Trainee</option>
                <option value="Junior">Junior</option>
              </select>
            </div>

            <div class="d-flex">
                <span>Total a pagar: $</span>   <span id="total"></span>
            </div>            
            
            <div class="botones"></div>
            <button
              class="btn btn-danger col-md-5 m-1"
              type="button"
              id="btnDelete"
              onclick="location.href='delete.jsp'">            
              Eliminar
              
            </button>
            <button
              class="btn btn-success col-md-5 m-1"
              type="submit"
              id="resumen2"
              form="formulario">
              Actualizar
            </button>
          </div>
        </form>
      </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
      <ul
        class="nav justify-content-center small text-center text-wrap fs-6 text fw-light"
      >
        <li class="nav-item">
          <a class="nav-link text-reset" aria-current="page" href="#"
            >Preguntas frecuentes</a
          >
        </li>
        <li class="nav-item">
          <a class="nav-link text-reset" href="#">Contáctanos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-reset" href="#">Prensa</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-reset" href="#">Conferencias</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-reset" href="#">Términos y condiciones</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-reset" href="#">Privacidad</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-reset" href="#">Estudiantes</a>
        </li>
      </ul>
    </footer>

    <script src="script.js"></script>
  </body>
</html>
