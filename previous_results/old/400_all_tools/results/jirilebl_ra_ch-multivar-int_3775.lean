import Mathlib

open Set

variable {n : ℕ}

def E (n : ℕ) := Fin n → ℝ

def closed_rectangle {n : ℕ} (a b : E n) : Set (E n) := Set.Icc a b

/-- We do not assume a concrete definition of Jordan measurability from Mathlib here;
    instead we take it as a predicate. -/
variable (IsJordanMeasurable : ∀ {n : ℕ}, Set (E n) → Prop)

theorem exists_finite_closed_rectangles_cover_disjoint (n : ℕ)
  (U S : Set (E n))
  (hU : IsOpen U)
  (hS_compact : IsCompact S)
  (hS_jordan : IsJordanMeasurable (S : Set (E n)))
  (hSsub : S ⊆ U) :
  ∃ P : Finset ((E n) × (E n)),
    (∀ p ∈ P, p.fst ≤ p.snd) ∧
    (∀ p ∈ P, closed_rectangle p.fst p.snd ⊆ U) ∧
    S ⊆ (⋃ p ∈ P, closed_rectangle p.fst p.snd) ∧
    (∀ p q ∈ P, p ≠ q → (interior (closed_rectangle p.fst p.snd)) ∩ (interior (closed_rectangle q.fst q.snd)) = ∅) := by
  sorry
