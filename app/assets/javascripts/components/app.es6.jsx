class App extends React.Component {
  render () {
    return (
      <div>
        <div>Name: {this.props.name}</div>
      </div>
    );
  }
}

App.propTypes = {
  name: React.PropTypes.string
};
