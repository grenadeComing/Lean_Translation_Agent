import Mathlib
open scoped Classical
open Set Function Filter Finset Metric
open scoped Classical
open Topology Nat uniformity NNReal ENNReal

/-- Define $f_{n}:[0,1] \rightarrow \mathbb{R}$ by the equation $f_{n}(x)=x^{n}$. Show that the sequence \left(f_{n}\right) does not converge uniformly. -/
theorem not_tendstoUniformlyOn_pow_extracted (n : ℕ) : ¬TendstoUniformlyOn (fun x => x ^ n) (fun x => x) atTop (Icc 0 1) := by sorry
