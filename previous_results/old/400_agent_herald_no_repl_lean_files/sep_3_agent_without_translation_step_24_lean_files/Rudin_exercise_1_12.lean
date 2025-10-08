import Mathlib

/-!
Simple formalization of Rudin exercise: triangle inequality for finite sums of complex numbers.
We state: if z₁,...,zₙ ∈ ℂ then |z₁ + ... + zₙ| ≤ |z₁| + ... + |zₙ|.
-/

theorem Rudin_exercise_1_12 (n : ℕ) (z : Fin n → ℂ) :
  Complex.abs (∑ i : Fin n, z i) ≤ ∑ i : Fin n, Complex.abs (z i) := by sorry
