const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp();

exports.checkEmail = functions.https.onCall(async (data, context) => {
    if (!context.auth) {
        throw new functions.https.HttpsError('Unauthorized', 'The function must be called while authenticated.');
    }

    const email = data.email;

    try {
        const userRecord = await admin.auth().getUserByEmail(email);
        return { exists: true };
    } catch (error) {
        if (error.code === 'auth/user-not-found') {
            return { exists: false };
        } else {
            throw new functions.https.HttpsError('internal', 'Something went wrong', error);
        }
    }
});
