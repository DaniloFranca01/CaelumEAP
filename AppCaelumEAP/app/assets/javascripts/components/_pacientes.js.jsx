class Pacientes extends React.Component {
    constructor(props) {
      super(props);
        this.state = {
          pacientes: []
        };
    }
    componentDidMount(){
      fetch('/pacientes.json')
        .then((response) => {return response.json()})
        .then((data) => {this.setState({ pacientes: data }) });
    }
    render(){
      return(
        <div>
          <head><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/></head>
          <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">CaelumEAP</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item active">
                  <a class="nav-link" href="/">Ínicio <span class="sr-only">(current)</span></a>
                </li>
              </ul>
              </div>
            </nav>
          <div className='tabela-pacientes'>
            <table class='table'>
              <thead className='table-header'>
                <tr>
                  <th scope='col'>CPF</th>
                  <th scope='col'>NOME</th>
                  <th scope='col'>IDADE</th>
                  <th scope='col'>GENERO</th>
                  <th scope='col'>HIP DIAGNOSTICA</th>
                </tr>
              </thead>
              <tbody>
                {this.state.pacientes.map((paciente) =>
                <tr>
                  <td>{paciente.cpf}</td>
                  <td>{paciente.nome}</td>
                  <td>{paciente.idade}</td>
                  <td>{paciente.genero}</td>
                  <td>{paciente.hip_diag}</td>
                </tr>
                )}
              </tbody>
            </table>
          </div>
        </div>
            
      )
    }
  }