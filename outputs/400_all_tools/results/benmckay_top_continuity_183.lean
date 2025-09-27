import Mathlib

universe u

variable {X : Type u} [TopologicalSpace X]

/-- A predicate saying which subsets of Option X are open in the one-point compactification. -/
def onePointIsOpen (U : Set (Option X)) : Prop :=
  (∃ V : Set X, IsOpen V ∧ U = Option.some '' V)
    ∨ ∃ C : Set X, IsCompact C ∧ U = {none} ∪ Option.some '' (Set.univ \ C)

/-- The one-point compactification topology on Option X.  Proof obligations are left as `sorry`. -/
instance : TopologicalSpace (Option X) where
  IsOpen := onePointIsOpen
  isOpen_univ := by
    -- proof omitted
    sorry
  isOpen_inter := by
    -- proof omitted
    sorry
  isOpen_sUnion := by
    -- proof omitted
    sorry

/-- Characterization of the opens in the one-point compactification. -/
theorem isOpen_iff (U : Set (Option X)) :
  IsOpen U ↔ (∃ V : Set X, IsOpen V ∧ U = Option.some '' V) ∨ ∃ C : Set X, IsCompact C ∧ U = {none} ∪ Option.some '' (Set.univ \ C) :=
  by
  -- proof omitted
  sorry
