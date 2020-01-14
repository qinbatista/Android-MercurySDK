package com.example.game;

import android.os.Bundle;
import android.os.Handler;

import com.elevenbitstudios.twommobile.fx.lenovo.R;

import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;

public class MainActivity extends Activity {
	private static ImageView img = null;
	
	private WebView webView;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
//		addContentView(createLaunchImage(),new WindowManager.LayoutParams(WindowManager.LayoutParams.FILL_PARENT,WindowManager.LayoutParams.FILL_PARENT));
        setContentView(R.layout.activity_main);
        WebView webView = new WebView(this);
		webView.loadUrl("http://luckydraw.lenovogame.com/luckydraw/reserve/detail.xhtml?id=2c9a41935be60d57015c0af7a86f37a6&status=1");
		WebSettings localWebSettings = webView.getSettings();
	    localWebSettings.setSaveFormData(false);
	    localWebSettings.setSupportZoom(false);
	    String str = getApplicationContext().getDir("database", 0).getPath();
	    localWebSettings.setGeolocationEnabled(true);
	    localWebSettings.setGeolocationDatabasePath(str);
	    localWebSettings.setDefaultTextEncodingName("utf-8");
	    localWebSettings.setAllowFileAccess(true);
	    localWebSettings.setDomStorageEnabled(true);
	    localWebSettings.setJavaScriptEnabled(true);
	    localWebSettings.setBlockNetworkImage(false);
	    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
	    localWebSettings.setLoadsImagesAutomatically(true);
		setContentView(webView);
        //init();
		//w.loadUrl("http://luckydraw.lenovogame.com/luckydraw/reserve/detail.xhtml?id=2c9a41935be60d57015c0af7a86f37a6&status=1");
		
	}
	private void init(){
        webView = (WebView) findViewById(R.id.webView);
        //WebView加载web资源
       webView.loadUrl("http://luckydraw.lenovogame.com/luckydraw/reserve/detail.xhtml?id=2c9a41935be60d57015c0af7a86f37a6&status=1");
        //覆盖WebView默认使用第三方或系统默认浏览器打开网页的行为，使网页用WebView打开
       webView.setWebViewClient(new WebViewClient(){
           @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            // TODO Auto-generated method stub
               //返回值是true的时候控制去WebView打开，为false调用系统浏览器或第三方浏览器
             view.loadUrl(url);
            return true;
        }
       });
    }

	protected ImageView createLaunchImage() 
    {    
    	img = new ImageView(this);    
    	img.setImageResource(R.drawable.splash3);    
    	return img;
    }
    
    public void removeLaunchImage() 
    {           
		new Handler(this.getMainLooper()).post(new Runnable() {
		@Override
		public void run() {
    		if (img != null) 
    		{                
    			img.setVisibility(View.GONE);            
    		}        
    	}    
    	});
    }


}
