# Module 1 – Activity 3 – Dart I/O (Dart)

Practice reading input from the user and printing output.

## What to do

### 1. Fill in your details

Open `student.json` and fill in every field (use the **class code** your
instructor gave you):

```json
{
  "classCode": "1234",
  "fullName": "Juan Dela Cruz",
  "studentNumber": "2026-12345",
  "studentEmail": "juan.delacruz@hau.edu.ph",
  "personalEmail": "juan@example.com",
  "githubAccount": "juandelacruz"
}
```

> **Keep `student.json` identical across all your activities.** The autograder
> cross-checks these fields between your repos, and a mismatch (e.g. a different
> `classCode` in one activity) is flagged. The `classCode` must also match the
> one in your repo name.

### 2. Write the program

Open [`bin/age.dart`](bin/age.dart). The program must:

1. Ask the user for their **nickname**.
2. Ask the user for their **current age**.
3. Display a message showing **how many years** they have before they reach
   **100** (that is, `100 - age`).

**Input order matters** (the autograder feeds input in this order): first the
**nickname**, then the **age**.

Run it yourself:

```bash
dart run bin/age.dart
```

## Set up your repo

Before you write any code, create **your own copy** of this activity from the
template. Do not work in the template itself.

1. **Create from the template.** Open the template repo and click
   **Use this template → Create a new repository**.
2. **Set the owner to the course org.** Under *Owner*, choose the **`HAU-6ADET`
   course org**, **not** your personal account.
3. **Name it by the convention** `m<module>a<activity>-<classcode>-<yourname>`.
   For this activity that's **`m1a3-<classcode>-yourname`** (e.g.
   `m1a3-1234-juandelacruz`). The `<classcode>` must match the one you put in
   `student.json`.
4. **Make it Private.** Set *Visibility* to **Private** so classmates can't see
   your work.

Then clone **your** new repo and work there:

```bash
git clone https://github.com/HAU-6ADET/m1a3-<classcode>-yourname.git
cd m1a3-<classcode>-yourname
```

## Running the test

```bash
dart pub get
dart test
```

This activity is graded by **8 tests** (1 point each). They check:

- ✅ each of the 6 fields in `student.json` is filled in (6 tests)
- ✅ the program prints the correct remaining years for two ages: `25` → `75`
  and `40` → `60` (2 tests)

Each part is graded independently, so you earn partial credit for the parts
you finish.

## Confirm your submission

Your repo **is** your submission, so there is nothing to upload anywhere. When the
test passes locally, **commit and push** so your work is recorded:

```bash
git add -A
git commit -m "Activity 3 complete"
git push
```

Pushing triggers the **Autograde** workflow. Confirm your submission landed:

1. Open your repo on GitHub and click the **Actions** tab.
2. Open the latest **Autograde** run and confirm the green ✅ check
   and the "8 / 8 tests passed" summary.
