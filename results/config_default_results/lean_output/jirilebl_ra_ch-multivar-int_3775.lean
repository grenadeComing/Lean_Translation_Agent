import Mathlib

variable {n : ℕ} (IsJordanMeasurable : Set (Fin n → ℝ) → Prop)

/-- A closed (axis-aligned) rectangle in ℝ^n determined by lower and upper corner a ≤ b. -/
def closed_rectangle (a b : Fin n → ℝ) : Set (Fin n → ℝ) :=
  Set.pi (Set.univ : Set (Fin n)) fun i => Set.Icc (a i) (b i)

/-- Suppose U ⊂ ℝ^n is open and S ⊂ U is a compact Jordan measurable set. There exist finitely
many closed rectangles P_1,...,P_k contained in U such that S ⊆ ⋃_{j=1}^k P_j and the interiors are
mutually disjoint. -/
theorem exists_closed_rectangles_cover_disjoint {U : Set (Fin n → ℝ)} (hU : IsOpen U)
  {S : Set (Fin n → ℝ)} (hS : IsCompact S) (hJ : IsJordanMeasurable S) :
  ∃ (P : Finset (Set (Fin n → ℝ))),
    (∀ p ∈ P, ∃ (a b : Fin n → ℝ), (∀ i, a i ≤ b i) ∧ p = closed_rectangle a b) ∧
    (∀ p ∈ P, p ⊆ U) ∧ S ⊆ (⋃ p ∈ P, p) ∧ (∀ p ∈ P, ∀ q ∈ P, p ≠ q → (interior p ∩ interior q) = ∅) := by sorry
