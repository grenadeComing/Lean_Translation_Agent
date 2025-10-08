import Mathlib

open Set

/-!
Lemma: Given a topological space X covered by open sets U a (a : α) and a path x : ℝ → X
continuous on Icc 0 1, there exist partition points 0 = t_0 < ... < t_n = 1 and indices a_0..a_{n-1}
such that each image x " Icc(t_i, t_{i+1}) is contained in some U (a_i).
-/

variable {X : Type _} [TopologicalSpace X] {α : Type _}

lemma path_subcover_segments (U : α → Set X)
  (hcover : (⋃ a, U a) = (univ : Set X))
  (hopen : ∀ a, IsOpen (U a))
  {x : ℝ → X} (hcont : ContinuousOn x (Icc (0 : ℝ) 1)) :
  ∃ (n : ℕ) (t : Fin (n+1) → ℝ) (a : Fin n → α),
    StrictMono t ∧ t 0 = 0 ∧ t (Fin.last n) = 1 ∧
    ∀ i : Fin n, x '' (Icc (t (Fin.castSucc i)) (t (Fin.succ (Fin.castSucc i)))) ⊆ U (a i) := by sorry
