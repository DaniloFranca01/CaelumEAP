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
          <a href="/">Início</a>
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