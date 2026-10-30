# Issues & Fix Plan — TugasKu

## Goal
Fix all real Flutter/Dart errors and make the blue **Add (+)** button on the Home screen clickable and functional when running with `flutter run`. Follow `context/design-system.md` and use the relevant Flutter/Dart skills in `.agents` and `.claude`.

## Confirmed Issues
- [ ] **P0 — Add button is disabled:** `task_list_screen.dart` has `FloatingActionButton.onPressed: null`. Connect it to the Add Task form; tapping it must open the form.
- [ ] **P0 — Home screen is incomplete:** the body is placeholder content. Implement the task list and meaningful empty/loading/error states.
- [ ] **P0 — Dart analysis errors:** the latest Problems snapshot reports missing imports for `domain/entities/task.dart` and `domain/repositories/task_repository.dart`, plus undefined `Task`, `TaskStatus`, and `TaskPriority` in `task_repository_impl.dart`. Inspect the actual folder structure, then create the missing domain files or correct imports and types consistently.
- [ ] **P0 — Database access errors:** `task_repository_impl.dart` reports `query`, `insert`, `update`, and `delete` called on a `Future`. Check `task_database.dart` and correctly `await` database initialization before using the `Database` instance.
- [ ] **P1 — Dependency configuration:** a duplicate `flutter_test` entry was found in `pubspec.yaml` and reportedly removed. Verify the file is valid and `flutter pub get` succeeds.
- [ ] **P1 — Feature wiring:** connect the UI, ViewModel/state layer, repository, and SQLite database so actions really update the UI and persist data.

## Required Behavior
- [ ] Tap the blue **Add (+)** button on Home → Add Task form opens.
- [ ] Validate required fields and save a task → return to Home and display the new task.
- [ ] View, edit, change status, and delete tasks with confirmation.
- [ ] Search and status filters work together.
- [ ] Data remains after app restart; database failures show a clear error instead of fake success.
- [ ] Buttons, dialogs, form fields, and navigation respond to taps on the Android emulator.
- [ ] UI follows `context/design-system.md`; do not add unrelated redesigns.

## Verification / Definition of Done
1. Inspect the actual source tree, `pubspec.yaml`, `context/design-system.md`, this file, and relevant Flutter/Dart skills before editing.
2. Fix root causes; do not hide errors with lint suppressions or leave placeholder callbacks.
3. Run `flutter pub get`, `dart format .`, `flutter analyze`, and `flutter test`; fix issues and rerun.
4. Run `flutter run` on the connected Android emulator and manually test the Add (+) button and the critical task flows.
5. Recheck VS Code **Problems** after diagnostics refresh. Target: zero project errors and warnings.
6. Update this file with verified results. Do not mark any item done or claim emulator testing passed unless it was actually verified. If GUI/emulator interaction is unavailable, state that limitation clearly.

[{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "dartAnalysisLSP",
	"code": {
		"value": "undefined_method",
		"target": {
			"$mid": 1,
			"path": "/diagnostics/undefined_method",
			"scheme": "https",
			"authority": "dart.dev"
		}
	},
	"severity": 8,
	"message": "The method '_toRow' isn't defined for the type 'TaskRepositoryImpl'.\nTry correcting the name to the name of an existing method, or defining a method named '_toRow'.",
	"source": "dart",
	"startLineNumber": 75,
	"startColumn": 30,
	"endLineNumber": 75,
	"endColumn": 36,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "dartAnalysisLSP",
	"code": {
		"value": "undefined_method",
		"target": {
			"$mid": 1,
			"path": "/diagnostics/undefined_method",
			"scheme": "https",
			"authority": "dart.dev"
		}
	},
	"severity": 8,
	"message": "The method '_toRow' isn't defined for the type 'TaskRepositoryImpl'.\nTry correcting the name to the name of an existing method, or defining a method named '_toRow'.",
	"source": "dart",
	"startLineNumber": 83,
	"startColumn": 7,
	"endLineNumber": 83,
	"endColumn": 13,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "dartAnalysisLSP",
	"code": {
		"value": "unused_element",
		"target": {
			"$mid": 1,
			"path": "/diagnostics/unused_element",
			"scheme": "https",
			"authority": "dart.dev"
		}
	},
	"severity": 4,
	"message": "The declaration '_updatableRow' isn't referenced.\nTry removing the declaration of '_updatableRow'.",
	"source": "dart",
	"startLineNumber": 142,
	"startColumn": 24,
	"endLineNumber": 142,
	"endColumn": 37,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Implementasi\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 7,
	"startColumn": 5,
	"endLineNumber": 7,
	"endColumn": 17,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"atas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 7,
	"startColumn": 38,
	"endLineNumber": 7,
	"endColumn": 42,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"lokal\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 7,
	"startColumn": 50,
	"endLineNumber": 7,
	"endColumn": 55,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Menyimpan\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 9,
	"startColumn": 5,
	"endLineNumber": 9,
	"endColumn": 14,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"tanggal\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 9,
	"startColumn": 15,
	"endLineNumber": 9,
	"endColumn": 22,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"dalam\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 9,
	"startColumn": 23,
	"endLineNumber": 9,
	"endColumn": 28,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"sebagai\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 9,
	"startColumn": 61,
	"endLineNumber": 9,
	"endColumn": 68,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"indeks\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 10,
	"startColumn": 5,
	"endLineNumber": 10,
	"endColumn": 11,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"sesuai\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 10,
	"startColumn": 20,
	"endLineNumber": 10,
	"endColumn": 26,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"prioritas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 24,
	"startColumn": 19,
	"endLineNumber": 24,
	"endColumn": 28,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"mata\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 25,
	"startColumn": 13,
	"endLineNumber": 25,
	"endColumn": 17,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Kuliah\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 25,
	"startColumn": 17,
	"endLineNumber": 25,
	"endColumn": 23,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"prioritas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 34,
	"startColumn": 9,
	"endLineNumber": 34,
	"endColumn": 18,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"prioritas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 35,
	"startColumn": 23,
	"endLineNumber": 35,
	"endColumn": 32,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"prioritas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 36,
	"startColumn": 16,
	"endLineNumber": 36,
	"endColumn": 25,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"mata\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 38,
	"startColumn": 9,
	"endLineNumber": 38,
	"endColumn": 13,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Kuliah\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 38,
	"startColumn": 13,
	"endLineNumber": 38,
	"endColumn": 19,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"mata\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 39,
	"startColumn": 29,
	"endLineNumber": 39,
	"endColumn": 33,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Kuliah\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 39,
	"startColumn": 33,
	"endLineNumber": 39,
	"endColumn": 39,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"mata\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 40,
	"startColumn": 20,
	"endLineNumber": 40,
	"endColumn": 24,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Kuliah\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 40,
	"startColumn": 24,
	"endLineNumber": 40,
	"endColumn": 30,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Tugas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 50,
	"startColumn": 14,
	"endLineNumber": 50,
	"endColumn": 19,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"bertenggat\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 50,
	"startColumn": 20,
	"endLineNumber": 50,
	"endColumn": 30,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"dulu\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 50,
	"startColumn": 31,
	"endLineNumber": 50,
	"endColumn": 35,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"terdekat\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 50,
	"startColumn": 37,
	"endLineNumber": 50,
	"endColumn": 45,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"lalu\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 50,
	"startColumn": 48,
	"endLineNumber": 50,
	"endColumn": 52,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"tanpa\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 50,
	"startColumn": 53,
	"endLineNumber": 50,
	"endColumn": 58,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"tenggat\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 50,
	"startColumn": 59,
	"endLineNumber": 50,
	"endColumn": 66,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Tugas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 99,
	"startColumn": 25,
	"endLineNumber": 99,
	"endColumn": 30,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"dengan\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 99,
	"startColumn": 31,
	"endLineNumber": 99,
	"endColumn": 37,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"tidak\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 99,
	"startColumn": 45,
	"endLineNumber": 99,
	"endColumn": 50,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"ditemukan\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 99,
	"startColumn": 51,
	"endLineNumber": 99,
	"endColumn": 60,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Konversi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 105,
	"startColumn": 7,
	"endLineNumber": 105,
	"endColumn": 15,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"baris\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 105,
	"startColumn": 16,
	"endLineNumber": 105,
	"endColumn": 21,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"menjadi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 105,
	"startColumn": 25,
	"endLineNumber": 105,
	"endColumn": 32,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"mata\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 109,
	"startColumn": 7,
	"endLineNumber": 109,
	"endColumn": 11,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Kuliah\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 109,
	"startColumn": 11,
	"endLineNumber": 109,
	"endColumn": 17,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"mata\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 109,
	"startColumn": 24,
	"endLineNumber": 109,
	"endColumn": 28,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Kuliah\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 109,
	"startColumn": 28,
	"endLineNumber": 109,
	"endColumn": 34,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"judul\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 110,
	"startColumn": 7,
	"endLineNumber": 110,
	"endColumn": 12,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"judul\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 110,
	"startColumn": 19,
	"endLineNumber": 110,
	"endColumn": 24,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"deskripsi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 111,
	"startColumn": 7,
	"endLineNumber": 111,
	"endColumn": 16,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"deskripsi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 111,
	"startColumn": 24,
	"endLineNumber": 111,
	"endColumn": 33,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"prioritas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 116,
	"startColumn": 7,
	"endLineNumber": 116,
	"endColumn": 16,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"prioritas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 116,
	"startColumn": 43,
	"endLineNumber": 116,
	"endColumn": 52,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Konversi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 126,
	"startColumn": 7,
	"endLineNumber": 126,
	"endColumn": 15,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"menjadi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 126,
	"startColumn": 23,
	"endLineNumber": 126,
	"endColumn": 30,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"baris\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 126,
	"startColumn": 31,
	"endLineNumber": 126,
	"endColumn": 36,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"untuk\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 126,
	"startColumn": 40,
	"endLineNumber": 126,
	"endColumn": 45,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"dihindari\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 127,
	"startColumn": 12,
	"endLineNumber": 127,
	"endColumn": 21,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"AUTOINCREMENT\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 127,
	"startColumn": 34,
	"endLineNumber": 127,
	"endColumn": 47,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"menghasilkannya\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 127,
	"startColumn": 53,
	"endLineNumber": 127,
	"endColumn": 68,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"insertable\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 128,
	"startColumn": 25,
	"endLineNumber": 128,
	"endColumn": 35,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"mata\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 130,
	"startColumn": 8,
	"endLineNumber": 130,
	"endColumn": 12,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Kuliah\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 130,
	"startColumn": 12,
	"endLineNumber": 130,
	"endColumn": 18,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"mata\": Misspelled word.",
	"source": "cSpell",
	"startLineNumber": 130,
	"startColumn": 26,
	"endLineNumber": 130,
	"endColumn": 30,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Kuliah\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 130,
	"startColumn": 30,
	"endLineNumber": 130,
	"endColumn": 36,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"judul\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 131,
	"startColumn": 8,
	"endLineNumber": 131,
	"endColumn": 13,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"judul\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 131,
	"startColumn": 21,
	"endLineNumber": 131,
	"endColumn": 26,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"deskripsi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 132,
	"startColumn": 8,
	"endLineNumber": 132,
	"endColumn": 17,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"deskripsi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 132,
	"startColumn": 25,
	"endLineNumber": 132,
	"endColumn": 34,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"prioritas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 134,
	"startColumn": 8,
	"endLineNumber": 134,
	"endColumn": 17,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"prioritas\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 134,
	"startColumn": 25,
	"endLineNumber": 134,
	"endColumn": 34,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"Konversi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 141,
	"startColumn": 7,
	"endLineNumber": 141,
	"endColumn": 15,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"menjadi\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 141,
	"startColumn": 23,
	"endLineNumber": 141,
	"endColumn": 30,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"baris\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 141,
	"startColumn": 31,
	"endLineNumber": 141,
	"endColumn": 36,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"untuk\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 141,
	"startColumn": 40,
	"endLineNumber": 141,
	"endColumn": 45,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"termasuk\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 141,
	"startColumn": 54,
	"endLineNumber": 141,
	"endColumn": 62,
	"modelVersionId": 9,
	"origin": "extHost1"
},{
	"resource": "/C:/CODES/Campus-Project/PAB/manajemen_tugas_kampus/lib/features/tasks/data/task_repository_impl.dart",
	"owner": "cSpell",
	"severity": 2,
	"message": "\"insertable\": Unknown word.",
	"source": "cSpell",
	"startLineNumber": 143,
	"startColumn": 44,
	"endLineNumber": 143,
	"endColumn": 54,
	"modelVersionId": 9,
	"origin": "extHost1"
}]
