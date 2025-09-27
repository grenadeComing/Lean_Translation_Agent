import Mathlib

/-!
Let X be a topological space covered by open sets {X_a}_{a∈A} and let x : [0,1] → X be a path.
There exist real numbers 0 = t_0 < t_1 < ... < t_n = 1 and indices a_0,...,a_{n-1} such that
for each i we have x([t_i,t_{i+1}]) ⊆ X_{a_i}.
-/

theorem exists_partition_of_path_cover {X : Type*} [TopologicalSpace X] {A : Type*}
  (U : A → Set X) (hU : ∀ a, IsOpen (U a)) (cover : (⋃ a, U a) = (Set.univ : Set X))
  {x : ℝ → X} (cont : ContinuousOn x (Set.Icc (0 : ℝ) 1)) :
  ∃ (n : ℕ) (t : Fin (n+1) → ℝ) (a : Fin n → A),
    t (0 : Fin (n+1)) = 0 ∧ t (Fin.last n) = 1 ∧
    (∀ i : Fin (n+1), 0 ≤ t i ∧ t i ≤ 1) ∧
    (∀ i : Fin n, t (Fin.castSucc i) < t (Fin.succ i) ∧
      ∀ s, t (Fin.castSucc i) ≤ s → s ≤ t (Fin.succ i) → x s ∈ U (a i)) := by sorry
