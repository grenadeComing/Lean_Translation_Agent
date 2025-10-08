import Mathlib

/-- Rotation by 2π/n as a 2×2 real matrix. -/
def r (n : ℕ) (hn : 3 ≤ n) : Matrix (Fin 2) (Fin 2) ℝ :=
  let θ : ℝ := 2 * Real.pi / (n : ℝ)
  fun (i j : Fin 2) =>
    match i, j with
    | ⟨0, _⟩, ⟨0, _⟩ => Real.cos θ
    | ⟨0, _⟩, ⟨1, _⟩ => -Real.sin θ
    | ⟨1, _⟩, ⟨0, _⟩ => Real.sin θ
    | ⟨1, _⟩, ⟨1, _⟩ => Real.cos θ

/-- Reflection across the horizontal axis (diag(1, -1)). -/
def h (n : ℕ) (hn : 3 ≤ n) : Matrix (Fin 2) (Fin 2) ℝ :=
  fun (i j : Fin 2) =>
    match i, j with
    | ⟨0, _⟩, ⟨0, _⟩ => (1 : ℝ)
    | ⟨0, _⟩, ⟨1, _⟩ => 0
    | ⟨1, _⟩, ⟨0, _⟩ => 0
    | ⟨1, _⟩, ⟨1, _⟩ => -1

/-- Conjugating the reflection across the horizontal axis by the rotation gives the same reflection. -/
theorem rhr_eq_h (n : ℕ) (hn : 3 ≤ n) : (r n hn) * (h n hn) * (r n hn) = h n hn := by
  sorry
