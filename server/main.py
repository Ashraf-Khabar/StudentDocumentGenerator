from flask import Flask, render_template
from controllers.affichage_cycle import affichage_cycle
from controllers.affichage_planning_after import affichage_planning_after
from controllers.affichage_attestation import affichage_attestation
from controllers.relever_de_note import affichage_relever_de_note

app = Flask(__name__, template_folder='templates')


@app.route('/affichage')
def affichage():
    affichage_cycle()
    return render_template('affichage.html', template_folder='templates')


@app.route('/planning_after')
def planning_after():
    affichage_planning_after()
    return render_template('planning_after.html', template_folder='templates')


@app.route('/attestation')
def attestation():
    affichage_attestation()
    return render_template('attestation.html', template_folder='templates')


@app.route('/relever_de_note')
def relever_de_note():
        affichage_relever_de_note()
        return render_template('relever_de_note.html', template_folder='templates')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3002, debug=True)
