import Mathlib

/-
Suppose X ⊆ ℝ^n is such that for every ε>0 there exists a set Y ⊇ X with m*(Y) ≤ ε,
where m* is the outer measure on ℝ^n. Prove that X has measure zero (m*(X) = 0).

We state a slightly more general lemma: for any function m on sets taking nonnegative
real values and monotone, if for every ε>0 there is a superset Y with m(Y) ≤ ε,
then m(X) = 0. This captures the usual outer-measure argument.
-/

theorem measure_zero_of_outer_cover {n : Nat} {X : Set (Fin n → ℝ)}
  (m : Set (Fin n → ℝ) → ℝ)
  (h_nonneg : ∀ A, 0 ≤ m A)
  (h_mono : ∀ {A B : Set (Fin n → ℝ)}, A ⊆ B → m A ≤ m B)
  (h_cover : ∀ ε : ℝ, ε > 0 → ∃ Y : Set (Fin n → ℝ), X ⊆ Y ∧ m Y ≤ ε) :
  m X = 0 := by sorry
