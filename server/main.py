from flask import Flask, render_template
from controllers.affichage_cycle import affichage_cycle

app = Flask(__name__, template_folder='templates')


@app.route('/affichage')
def affichage():
    affichage_cycle()
    return render_template('output.html', template_folder='templates')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3002, debug=True)
