class UserCadastro extends React.Component {
  render(){
    return(
      <div>
        <head>
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
          <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"/>
          <link rel="stylesheet" type="text/css" href="styles.css"/>
        </head>
        <div class="container">
          <div class="d-flex justify-content-center h-100">
            <div class="card-cadastro">
              <div class="card-header">
                <h3>Cadastro</h3>
              </div>
              <div class="card-body">
                <form action='/sessions' method='post'>
                  <div class="input-group form-group">
                    <input type="text" class="form-control" placeholder="Email"/>
                  </div>
                  <div class="input-group form-group">
                    <input type="password" class="form-control" placeholder="Senha (no mínimo 6 caracteres)"/>
                  </div>
                  <div class="input-group form-group">
                    <input type="text" class="form-control" placeholder="Confirme a senha"/>
                  </div>
                  <div class="input-group form-group">
                    <input type="text" class="form-control" placeholder="Nome"/>
                  </div>
                  <div class="input-group form-group cargos">
                    <select name="cargos">
                      <option>Selecione o seu cargo</option>
                      <option value="enfermeiro">Enfermeiro</option>
                      <option value="fisioterapeuta">Fisioterapeuta</option>
                      <option value="medico">Médico</option>
                      <option value="nutricionista">Nutricionista</option>
                    </select>
                  </div>
                  <div class="input-group form-group">
                    <input type="text" class="form-control" placeholder="Documento"/>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="Enviar" class="btn float-right login_btn"/>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  }    
}