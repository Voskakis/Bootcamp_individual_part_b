### Individual Project part B

Κωνσταντίνος Βοσκάκης

## ER Diagram
Το έκανα copy paste από τη σελίδα που δίνεται στην εκφώνηση γιατί μάλλον χρειάζεται συνδρομή για να αποθηκευτεί από εκεί. Το αρχείο είναι το ERD.jpg

## Queries
Όλα τα queries που τυπώνουν δεδομένα της βάσης βρίσκονται με τη σειρά στο αρχείο SQLQuery.sql. Τα περισσότερα τα έκανα χωρίς το INNER JOIN keyword, εκτός του τελευταίου. Αλλά η διαδικασία είναι παρόμοια για όλα.

## Project

# DΒManager
	Η κλάση αυτή διαχειρίζεται όλα τα σχετικά με τη βάση, κι απλά καλούνται οι κατάλληλες συναρτήσεις της για επικοινωνία.
	Ας σημειωθεί ότι η συνάρτηση Populate δεν μπορεί να χρησιμοποιηθεί σε βάση που έχει ήδη έστω και μια εγγραφή στους πίνακες Course, Student, Assignment ή Trainer.
	Η εισαγωγή νέων στοιχείων γίνεται ως ένα κάθε φορά με διαδοχικές ερωτήσεις προς το χρήστη.
	Οι συναρτήσεις εισαγωγής περιμένουν σωστή εισαγωγή από το χρήστη για να πρωχωρήσουν στην δημιουργία καινούριων εγγραφών. Όσο δίνεται λάθος εισαγωγή, περιμένουν καινούρια εισαγωγή.
	'Οταν εισάγεται ένας καινούριος μαθητής σε ένα μάθημα, δε παίρνει όλα τα ήδη υπάρχοντα Assignments του μαθήματος αυτού.
	
# RandomData
	Η κλάση αυτή παράγει τυχαία δεδομένα για όλες τις ανάγκες του υπόλοιπου προγράμματος.
	
Με τη βοήθεια των συναρτήσεων της RandomData και της συνάρτησης DBManager.Populate παράχθηκαν οι εγγραφές της βάσης μου.	
Γι' αυτό το λόγο πολλά στοιχεία μπορεί να παρουσιάζουν ομοιότητα. Πχ δυο μαθητές να έχουν το ίδιο συνδιασμό ονόματος-επιθέτου. Παρόμοια ισχύουν ακόμη και για courses.
Για κάθε εξακρίβωση των αποτελεσμάτων παρακαλώ εμπιστευτείτε τα αντίστοιχα id και όχι άλλα στοιχεία.

Καλό Πάσχα!
