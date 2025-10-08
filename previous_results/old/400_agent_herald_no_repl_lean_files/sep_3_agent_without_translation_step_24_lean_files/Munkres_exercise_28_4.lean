import Mathlib

open Set

variable (α : Type _) [TopologicalSpace α]

/-- Every countable open cover has a finite subcover. -/
def countably_compact_space : Prop :=
  ∀ (U : ℕ → Set α), (∀ n, IsOpen (U n)) → (∀ x, ∃ n, x ∈ U n) → ∃ N : Finset ℕ, ∀ x, ∃ n ∈ N, x ∈ U n

/-- x is a limit point (accumulation point) of s. -/
def is_limit_point (x : α) (s : Set α) : Prop :=
  ∀ U : Set α, IsOpen U → x ∈ U → ∃ y ∈ s, y ≠ x ∧ y ∈ U

/-- Every infinite subset has a limit point. -/
def limit_point_compact_space : Prop :=
  ∀ s : Set α, s.Infinite → ∃ x, is_limit_point α x s

/-- T1 separation axiom: for each distinct x,y there is an open set containing x but not y. -/
def t1_space_prop : Prop :=
  ∀ x y : α, x ≠ y → ∃ U : Set α, IsOpen U ∧ x ∈ U ∧ y ∉ U

/-- For T1 spaces, countable compactness is equivalent to limit point compactness. -/
theorem countably_compact_iff_limit_point_compact_of_t1 (h : t1_space_prop α) :
  (countably_compact_space α ↔ limit_point_compact_space α) := by sorry
