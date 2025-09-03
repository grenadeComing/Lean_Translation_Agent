import Mathlib

variable {X : Type _}

open CompleteLattice

theorem TopologicalSpace.generateFrom_eq_Inf (A : Set (Set X)) :
  TopologicalSpace.generateFrom A = Inf ({ t : TopologicalSpace X | ∀ U ∈ A, @IsOpen X t U } : Set (TopologicalSpace X)) := by sorry
