from flask import Flask, render_template
from controllers.affichage_cycle import affichage_cycle
from controllers.affichage_planning_after import affichage_planning_after
from controllers.affichage_attestation import affichage_attestation

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


# @app.route('/carte_etudiant_back')
# def carte_etudiant_back():
#         affichage_carte_etudiant_back()
#         return render_template('carte_etudiant_back.html', template_folder='templates')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3002, debug=True)
