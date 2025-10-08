import Mathlib

/-!
Suppose f is a holomorphic function on a neighborhood of the closed disk \overline{D}(0,1)
and suppose f(0) ≠ 0. Then there exists a constant C such that for all m ∈ ℕ and |z| ≤ 1,
| 1 - ∑_{k=0}^m f^{(k)}(0)/(k! f(0)) z^k | ≤ C |z|^{m+1}.
-/

open Complex Finset Set

theorem exists_C_taylor_unit_disk (f : ℂ → ℂ)
  (h : ∃ U : Set ℂ, IsOpen U ∧ closedBall (0 : ℂ) 1 ⊆ U ∧ IsHolomorphicOn f U)
  (hf0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ, |z| ≤ 1 →
    |1 - ∑ k in Finset.range (m + 1), (iteratedDeriv f k 0) / (k! * f 0) * z ^ k| ≤ C * |z| ^ (m + 1) := by sorry
