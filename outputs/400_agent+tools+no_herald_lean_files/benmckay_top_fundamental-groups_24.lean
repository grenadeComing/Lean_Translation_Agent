import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X] {A : Type*}

/-- Let X be a topological space covered by open sets U a (a ∈ A).
    Given a path x : [0,1] → X (as a continuous map from the closed interval),
    there exists a partition 0 = t_0 < t_1 < ... < t_n = 1
    and indices a_0, ..., a_{n-1} such that x([t_i, t_{i+1}]) ⊆ U a_i for each i. -/
theorem path_subdivision_of_open_cover
  (U : A → Set X) (hUopen : ∀ a, IsOpen (U a)) (hcover : (⋃ a, U a) = (univ : Set X))
  (x : ContinuousMap ℝ X) (hpath : x '' (Set.Icc (0 : ℝ) 1) ⊆ univ) :
  ∃ (n : ℕ) (t : ℕ → ℝ) (a : ℕ → A),
    t 0 = 0 ∧ t n = 1 ∧
    (∀ i, i < n → t i < t (i+1) ∧ (Set.image x (Set.Icc (t i) (t (i+1))) ⊆ U (a i))) :=
by sorry
