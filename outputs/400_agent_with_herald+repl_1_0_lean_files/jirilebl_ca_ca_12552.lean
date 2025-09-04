import Mathlib

open Complex
open Finset
open BigOperators

/-- A conservative Lean translation of the analytic statement.
    We assume the existence of a power series expansion a : ℕ → ℂ
    which converges to f on the closed unit disk. This is a
    hypothesis that follows from holomorphicity on a neighborhood
    of the closed disk. -/
lemma jirilebl_ca_ca_12552
  (f : ℂ → ℂ)
  (r : ℝ)
  (a : ℕ → ℂ)
  (h_series : 1 < r ∧ ∀ z, Complex.abs z ≤ 1 → (∑' k, a k * z ^ k) = f z)
  (h0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ,
    Complex.abs (1 - ∑ k in Finset.range (m + 1), (a k) / (a 0) * z ^ k) ≤
    C * (Complex.abs z) ^ (m + 1) := by sorry
