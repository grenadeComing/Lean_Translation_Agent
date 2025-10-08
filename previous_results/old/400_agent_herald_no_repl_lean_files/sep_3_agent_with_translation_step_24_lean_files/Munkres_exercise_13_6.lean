import Mathlib

open Set

/-- The set K = {1/(n+1) | n ∈ ℕ} used in the K-topology. -/
def K : Set ℝ := Set.range (fun n : ℕ => (1 : ℝ) / (n + 1))

/-- Basis for the lower limit (Sorgenfrey) topology: half-open intervals [a,b). -/
def lower_limit_basis : Set (Set ℝ) := { s | ∃ a b : ℝ, a < b ∧ s = Set.Ico a b }

/-- The Sorgenfrey (lower limit) topology on ℝ. -/
def Sorgenfrey : TopologicalSpace ℝ := TopologicalSpace.generateFrom lower_limit_basis

/-- Basis for the K-topology: all open intervals (a,b) and their complements of K inside them (a,b) \ K. -/
def K_basis : Set (Set ℝ) := { s | ∃ a b : ℝ, a < b ∧ (s = Set.Ioo a b ∨ s = Set.Ioo a b \ K) }

/-- The K-topology on ℝ. -/
def K_topology : TopologicalSpace ℝ := TopologicalSpace.generateFrom K_basis

/-- There exists a set open in the Sorgenfrey topology but not open in the K-topology. -/
theorem exists_sorgenfrey_open_not_K : ∃ s : Set ℝ, @IsOpen ℝ Sorgenfrey s ∧ ¬ @IsOpen ℝ K_topology s := by sorry

/-- There exists a set open in the K-topology but not open in the Sorgenfrey topology. -/
theorem exists_K_open_not_sorgenfrey : ∃ s : Set ℝ, @IsOpen ℝ K_topology s ∧ ¬ @IsOpen ℝ Sorgenfrey s := by sorry
