import Mathlib

open Set

variable {X : Type*} [TopologicalSpace X]
variable {A : Type*} (U : A → Set X) (hcover : ⋃ a, U a = univ)

/-- Let X be a topological space covered by open sets U a, and let x : ℝ → X be continuous on [0,1].
There exist 0 = t_0 < t_1 < … < t_n = 1 and indices a_0,…,a_{n-1} such that
for each i, x(image of [t_i,t_{i+1}]) ⊆ U (a_i). -/
theorem path_subintervals_subset_of_open_cover (x : ℝ → X) (hcont : ContinuousOn x (Icc (0 : ℝ) 1)) :
  ∃ (n : ℕ) (ts : Fin (n+1) → ℝ) (as : Fin n → A),
    ts 0 = 0 ∧ ts (Fin.last n) = 1 ∧
    (∀ i : Fin n, ts (i.castSucc) < ts (i.succ)) ∧
    (∀ i : Fin n, Set.image x (Icc (ts (i.castSucc)) (ts (i.succ))) ⊆ U (as i)) := by sorry
