For the question below, decide which reference sources you need to answer it accurately, and write ONE
focused search query for each field. Leave a field as an empty string "" if that source is not
relevant - do not force it.

- cppref_q: C++ standard library / language reference (APIs, containers, semantics, e.g.
  "std::vector reserve capacity", "move semantics rvalue reference").
- cppdocs_q: MSVC specifics - compiler options, build, C runtime, intrinsics, preprocessor, PPL
  (e.g. "cl /std flags", "__popcnt64 intrinsic", "parallel_for_each").
- win32_q: Windows API - windowing, GDI/Direct2D, Direct3D, Media Foundation, sockets, files (e.g.
  "CreateWindowEx message loop", "WSAStartup socket connect").
- patterns_q: a design pattern, if the question is about software structure (e.g. "observer", "factory").
- guidelines_q: C++ Core Guidelines, if the question is about best practice / idioms / style.
- errors_q: an MSVC compiler or linker error code or message, if the question is about a diagnostic
  (e.g. "C2440", "LNK2019 unresolved external").
- howto_q: how to USE this ratchet itself, if the question is about adding a library/package,
  project setup, or the build model (e.g. "add a third-party library", "link a vcpkg package").

## Question
{{ question }}
