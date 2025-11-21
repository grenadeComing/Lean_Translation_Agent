import Mathlib

open Filter

theorem tendsto_mul_const_at_cluster {S : Set ℝ} {c L M a : ℝ} {f g : ℝ → ℝ}
  (hc : IsClusterPt c S)
  (hf : Tendsto f (nhdsWithin c S) (nhds L))
  (hg : Tendsto g (nhdsWithin c S) (nhds M)) :
  Tendsto (fun x => a * f x) (nhdsWithin c S) (nhds (a * L)) := by sorry