<style id="__aiosgate_css">
#__aiosgate{position:fixed;inset:0;z-index:2147483647;background:radial-gradient(130% 130% at 50% -10%,#141b27 0%,#0a0e15 48%,#05070b 100%);display:flex;align-items:center;justify-content:center;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"PingFang SC","Microsoft YaHei",sans-serif;-webkit-font-smoothing:antialiased}
#__aiosgate *{box-sizing:border-box}
#__aiosgate .gcard{width:340px;max-width:86vw;text-align:center;padding:40px 34px 30px}
#__aiosgate .gorb{width:62px;height:62px;border-radius:50%;margin:0 auto 22px;background:conic-gradient(from 210deg,#7ab7ff,#c08bff,#ff9bb0,#ffd27a,#8be0c0,#7ab7ff);box-shadow:0 0 30px rgba(140,180,255,.45),inset 0 0 16px rgba(255,255,255,.35);animation:__gspin 7s linear infinite}
#__aiosgate .gt{font-size:19px;font-weight:680;letter-spacing:.2px;color:#fff;margin:0 0 6px}
#__aiosgate .gs{font-size:12.5px;color:rgba(255,255,255,.5);margin:0 0 26px;letter-spacing:.04em}
#__aiosgate .gin{width:100%;height:46px;border-radius:13px;border:1px solid rgba(255,255,255,.14);background:rgba(255,255,255,.05);color:#fff;font-size:15px;text-align:center;letter-spacing:.18em;outline:none;transition:border-color .2s,background .2s,box-shadow .2s}
#__aiosgate .gin::placeholder{letter-spacing:.06em;color:rgba(255,255,255,.32)}
#__aiosgate .gin:focus{border-color:rgba(127,200,255,.6);background:rgba(255,255,255,.08);box-shadow:0 0 0 3px rgba(91,140,255,.18)}
#__aiosgate .gb{width:100%;height:46px;margin-top:12px;border:0;border-radius:13px;background:linear-gradient(150deg,#5b8cff,#7a5bff);color:#fff;font-size:14.5px;font-weight:640;letter-spacing:.04em;cursor:pointer;transition:filter .2s,transform .1s}
#__aiosgate .gb:hover{filter:brightness(1.08)}
#__aiosgate .gb:active{transform:scale(.985)}
#__aiosgate .ge{height:16px;margin-top:13px;font-size:12px;color:#ff8086;opacity:0;transition:opacity .2s}
#__aiosgate .gf{margin-top:22px;font-size:10.5px;letter-spacing:.14em;text-transform:uppercase;color:rgba(255,255,255,.26)}
@keyframes __gspin{to{transform:rotate(360deg)}}
@keyframes __gshake{10%,90%{transform:translateX(-2px)}30%,70%{transform:translateX(5px)}50%{transform:translateX(-7px)}}
</style>
<script>
(function(){
  var KEY='aios_demo_unlock_v1';
  var HASH='cc35f579797e106bb3ea97001fc565e8eb7d6b0a385920f2fc6721ddcc606d59';
  function ok(){try{return localStorage.getItem(KEY)===HASH;}catch(e){return false;}}
  if(ok())return;
  function sha(s){return crypto.subtle.digest('SHA-256',new TextEncoder().encode(s)).then(function(b){return Array.prototype.map.call(new Uint8Array(b),function(x){return ('0'+x.toString(16)).slice(-2);}).join('');});}
  function build(){
    if(document.getElementById('__aiosgate'))return;
    var ov=document.createElement('div');
    ov.id='__aiosgate';
    ov.innerHTML='<div class="gcard"><div class="gorb"></div><div class="gt">AIOS Dynamic Window</div><div class="gs">Mercedes-Benz · MVA — Private preview</div><input class="gin" id="__gp" type="password" autocomplete="off" autocapitalize="off" spellcheck="false" placeholder="Enter password"><button class="gb" id="__gb">Unlock</button><div class="ge" id="__ge">Incorrect password</div><div class="gf">Authorized access only</div></div>';
    (document.body||document.documentElement).appendChild(ov);
    var inp=document.getElementById('__gp'),btn=document.getElementById('__gb'),err=document.getElementById('__ge'),card=ov.querySelector('.gcard'),busy=false;
    function go(){
      if(busy)return;busy=true;
      sha(inp.value||'').then(function(h){
        busy=false;
        if(h===HASH){try{localStorage.setItem(KEY,HASH);}catch(e){}ov.style.transition='opacity .4s ease';ov.style.opacity='0';setTimeout(function(){if(ov&&ov.parentNode)ov.parentNode.removeChild(ov);},420);}
        else{err.style.opacity='1';inp.value='';card.style.animation='__gshake .42s';setTimeout(function(){card.style.animation='';},440);try{inp.focus();}catch(e){}}
      });
    }
    btn.addEventListener('click',go);
    inp.addEventListener('keydown',function(e){if(e.key==='Enter')go();else err.style.opacity='0';});
    setTimeout(function(){try{inp.focus();}catch(e){}},120);
  }
  if(document.documentElement)build();else document.addEventListener('DOMContentLoaded',build);
})();
</script>
