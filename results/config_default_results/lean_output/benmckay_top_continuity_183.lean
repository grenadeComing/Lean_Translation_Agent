import Mathlib

open Set

/-- One-point compactification topology existence statement.
    Let X be a topological space and let \overline{X} = X ∪ {∞} (modeled as Option X).
    Declare a set U ⊆ Option X to be open iff either none ∉ U and then U is the image of an open
    subset of X under Option.some, or none ∈ U and then U = {none} ∪ Option.some '' (univ \ C)
    for some compact C ⊆ X.
    The theorem asserts there exists a topology on Option X with exactly these open sets. -/
theorem one_point_compactification_exists (X : Type _) [TopologicalSpace X] :
  ∃ (τ : TopologicalSpace (Option X)),
    ∀ (U : Set (Option X)),
      @IsOpen (Option X) τ U ↔
        ((none : Option X) ∈ U ∧ ∃ (C : Set X), IsCompact C ∧ U = {none} ∪ Option.some '' (univ \ C))
        ∨ ((none : Option X) ∉ U ∧ ∃ (V : Set X), IsOpen V ∧ U = Option.some '' V) := by sorry
