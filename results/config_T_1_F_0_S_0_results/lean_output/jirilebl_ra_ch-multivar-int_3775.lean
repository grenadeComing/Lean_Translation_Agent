import Mathlib

open Set
open Topology

/-- A closed rectangle in R^n is a product of closed intervals. -/
def is_closed_rectangle {n : ℕ} (P : Set (Fin n → ℝ)) : Prop :=
  ∃ (a b : Fin n → ℝ), (∀ i, a i ≤ b i) ∧ P = Set.pi (univ : Set (Fin n)) fun i => Set.Icc (a i) (b i)

/-- Suppose U ⊆ ℝ^n is open and S ⊆ U is a compact Jordan measurable set. 
    Then there exist finitely many closed rectangles P_1,...,P_k contained in U such that
    S ⊆ ⋃_{j=1}^k P_j and the interiors are mutually disjoint. -/
theorem exists_finite_closed_rectangles_cover_disjoint_interior {n : ℕ}
  {U S : Set (Fin n → ℝ)}
  (hU : IsOpen U)
  (hS : IsCompact S)
  (hM : MeasurableSet S) :
  ∃ (k : ℕ) (P : Fin k → Set (Fin n → ℝ)),
    (∀ j, is_closed_rectangle (P j)) ∧
    (∀ j, P j ⊆ U) ∧
    S ⊆ (⋃ j : Fin k, P j) ∧
    (∀ (j l : Fin k), j ≠ l → (interior (P j) ∩ interior (P l) = ∅)) := by sorry